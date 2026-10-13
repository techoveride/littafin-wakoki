import 'package:flutter_test/flutter_test.dart';
import 'package:littafin_wakoki/util/version_utils.dart';

void main() {
  group('isNewerVersion', () {
    test('compares each part numerically, not as joined digits', () {
      expect(isNewerVersion('1.0.10', '1.0.9'), isTrue);
      expect(isNewerVersion('1.1.0', '1.0.10'), isTrue);
      expect(isNewerVersion('1.0.9', '1.0.10'), isFalse);
      expect(isNewerVersion('2.0.0', '1.9.9'), isTrue);
    });

    test('returns false for equal versions', () {
      expect(isNewerVersion('1.0.3', '1.0.3'), isFalse);
      expect(isNewerVersion('1.1', '1.1.0'), isFalse);
    });

    test('ignores build numbers, suffixes and whitespace', () {
      expect(isNewerVersion('1.0.3+9', '1.0.3+5'), isFalse);
      expect(isNewerVersion(' 1.0.4 ', '1.0.3'), isTrue);
      expect(isNewerVersion('1.0.4-beta', '1.0.3'), isTrue);
    });

    test('treats invalid parts as 0 instead of throwing', () {
      expect(isNewerVersion('abc', '1.0.0'), isFalse);
      expect(isNewerVersion('1.0.1', ''), isTrue);
    });
  });
}
