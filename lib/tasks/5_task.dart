class WordNumberConverter {
  static List<int> convertWordsToNumbers(List<String> list) {
    final Map<String, int> numsMap = {
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9,
    };

    print(list
        .map(
          (e) => e.toLowerCase(),
        )
        .toSet()
        .where((e) => numsMap.containsKey(e))
        .map(
          (e) => numsMap[e],
        ));
    return [];
  }
}