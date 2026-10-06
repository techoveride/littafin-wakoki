import 'package:littafin_wakoki/model/hymn_composer.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  String hymnTable = "HymnLyrics";
  String colAuthor = "author";

//  String col_favorite = "favorite";
  String colId = "id";
  String colLyrics = "lyric";
  String colTitle = "title";
  String colTune = "tune";

  DatabaseHelper.internal();

  static final DatabaseHelper _databaseHelper = DatabaseHelper.internal();

  factory DatabaseHelper() => _databaseHelper;
  static Database? db;

  Future<Database?> get getDB async {
    if (db != null) {
      return db;
    } else {
      db = await initDB();
      return db;
    }
  }

  initDB() async {
    String document = await getDatabasesPath();
    String path = join(document, "Hymn_Lyrics.db");
    Database? runDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return runDb;
  }

  void _onCreate(Database db, int dbVersion) async {
    await db.transaction((txn) async {
      txn.execute("CREATE TABLE $hymnTable("
          "$colId INTEGER PRIMARY KEY ,"
          "$colAuthor TEXT,"
//          "$col_favorite INTEGER,"
          "$colTitle TEXT,"
          "$colTune TEXT,"
          "$colLyrics TEXT)");
    });
  }

  Future<int> saveHymns(ComposeHymns hymn) async {
    Database? dbClient = await getDB;
    int res = -1;
    await dbClient?.transaction((txn) async {
      res = await txn.insert(hymnTable, hymn.toJson());
    });
    return res;
  }

  Future<List> getAllHymns() async {
    Database? dbClient = await getDB;
    List? result;
    await dbClient?.transaction((txn) async {
      result = await txn.rawQuery("SELECT * FROM $hymnTable");
    });
    return result!.toList();
  }

  Future<ComposeHymns?> getHymns(int id) async {
    Database? dbClient = db;
    List? result;
    await dbClient?.transaction((txn) async {
      result =
          await txn.rawQuery("SELECT * FROM $hymnTable WHERE $colId = $id");
    });
    if (result!.isEmpty) return null;
    return ComposeHymns.fromJson(result?.first);
  }

  Future<int> deleteHymns(int id) async {
    Database? dbClient = await getDB;
    int? result;
    await dbClient?.transaction((txn) async {
      result =
          await txn.delete(hymnTable, where: "$colId = ?", whereArgs: [id]);
    });
    return result!;
  }

/*  Future<int> updateHymns(Hymns user) async {
    var dbClient = await db;
   int? result;
    await dbClient.transaction((txn) async {
      result = await txn.update("$hymnTable", user.toMap(),
          where: "$rowId = ?", whereArgs: [user.id]);
    });
    return result;
  }*/

  Future closeDb() async {
    Database? dbClient = await getDB;
    dbClient?.close();
  }
}
