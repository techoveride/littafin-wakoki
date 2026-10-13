import 'package:flutter_test/flutter_test.dart';
import 'package:littafin_wakoki/model/hymn.dart';
import 'package:littafin_wakoki/model/hymn_sort.dart';

void main() {
  group('hymnTitleSortKey', () {
    test('strips catalog number prefixes', () {
      expect(hymnTitleSortKey('001-Ubangiji Allah'), 'ubangiji allah');
      expect(hymnTitleSortKey('120 - Yesu Na'), 'yesu na');
      expect(hymnTitleSortKey('‘Y01-Yesu, Ubangijina'), 'yesu, ubangijina');
    });

    test('places Hausa hooked letters after their base letter', () {
      final words = ['Ɗaukaka', 'Da', 'Ewa', 'Ƙauna', 'Kai', 'Lafiya'];
      words.sort((a, b) => hymnTitleSortKey(a).compareTo(hymnTitleSortKey(b)));
      expect(words, ['Da', 'Ɗaukaka', 'Ewa', 'Kai', 'Ƙauna', 'Lafiya']);
    });
  });

  test('sorts the real hymn catalog alphabetically, not by number', () {
    final sorted = List<Hymns>.of(listHymns)..sort(compareHymnTitles);
    final keys = sorted.map((h) => hymnTitleSortKey(h.title)).toList();
    for (var i = 1; i < keys.length; i++) {
      expect(keys[i - 1].compareTo(keys[i]) <= 0, isTrue,
          reason: '"${sorted[i - 1].title}" should come before "${sorted[i].title}"');
    }
    // Must differ from number order, and start with an A-title.
    expect(sorted.map((h) => h.id).toList(),
        isNot(equals(listHymns.map((h) => h.id).toList())));
    expect(keys.first.startsWith('a'), isTrue);
  });
}
