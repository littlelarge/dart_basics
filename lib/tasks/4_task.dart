class WordCounter {
  static Map<String, int> calculateWordCount(List<String> list) {
    final Map<String, int> map = {};

    for (int i = 0; i < list.length; i++) {
      final int count = list.where((element) => element == list[i]).length;

      map[list[i]] = count;
    }

    return map;
  }
}