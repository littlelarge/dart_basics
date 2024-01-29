class StringNumbersExtractor {
  static List<num> extractNumbersFromString(String str) {
    final List<num> res = str
        .split(' ')
        .where((element) => int.tryParse(element) is num ? true : false)
        .map((e) => int.parse(e))
        .toList();

    return res;
  }
}