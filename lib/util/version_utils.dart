/// Returns true if [remote] is a newer version than [current].
///
/// Compares MAJOR.MINOR.PATCH part by part as numbers, so "1.0.10" is newer
/// than "1.0.9". Build numbers ("+5") and suffixes ("-beta") are ignored, and
/// missing or invalid parts count as 0 ("1.1" == "1.1.0").
bool isNewerVersion(String remote, String current) {
  final r = _parseVersion(remote);
  final c = _parseVersion(current);
  for (var i = 0; i < 3; i++) {
    if (r[i] != c[i]) return r[i] > c[i];
  }
  return false;
}

List<int> _parseVersion(String version) {
  final core = version.trim().split('+').first.split('-').first;
  final parts = core.split('.').map((p) => int.tryParse(p) ?? 0).toList();
  while (parts.length < 3) {
    parts.add(0);
  }
  return parts;
}
