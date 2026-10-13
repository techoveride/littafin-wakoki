import 'package:littafin_wakoki/model/hymn.dart';

/// Leading catalog prefix on hymn titles, e.g. "001-", "001 -" or "‘Y01-".
final RegExp _titlePrefix = RegExp(r'^\W*[A-Za-z]?\d+\s*-\s*');

/// Hausa hooked letters sort right after their base letter (b, ɓ, c, d, ɗ, ...).
const Map<String, String> _hausaOrder = {
  'ɓ': 'b\u{10FFFF}',
  'ɗ': 'd\u{10FFFF}',
  'ƙ': 'k\u{10FFFF}',
  'ƴ': 'y\u{10FFFF}',
};

/// Returns the key a title should be sorted by alphabetically: the title without
/// its number prefix, lowercased, with Hausa letters placed in alphabet order.
String hymnTitleSortKey(String title) {
  final stripped = title.trim().replaceFirst(_titlePrefix, '').toLowerCase();
  final buffer = StringBuffer();
  for (final char in stripped.split('')) {
    buffer.write(_hausaOrder[char] ?? char);
  }
  return buffer.toString();
}

/// Comparator for sorting hymns A-Z by title, falling back to hymn number on ties.
int compareHymnTitles(Hymns a, Hymns b) {
  final byTitle = hymnTitleSortKey(a.title).compareTo(hymnTitleSortKey(b.title));
  return byTitle != 0 ? byTitle : a.id.compareTo(b.id);
}
