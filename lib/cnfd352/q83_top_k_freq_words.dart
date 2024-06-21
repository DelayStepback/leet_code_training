class Solution {
  List<String> topKFrequent(List<String> words, int k) {
    Map<String, int> m = {};

    for (var word in words) {
      m.update(word, (v) => v + 1, ifAbsent: () => 1);
    }

    List<String> mostFreq = [];

    List<int> values = m.values.toList();
    values.sort();
    print(m);
    for (int i = 0; i < k; i++) {
      final _keysWhere = m.keys.where((k) => m[k] == values.last).toList();
      _keysWhere.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()),);
      final _key = _keysWhere.first;
      print(_keysWhere);
      mostFreq.add(_key);
      m.remove(_key);
      values.removeLast();
    }
    // mostFreq.sort((a, b) {
    //   return a.toLowerCase().compareTo(b.toLowerCase());
    // });
    return mostFreq;
  }
}

void main() {
  final s = Solution();
  print(s.topKFrequent(["i","love","leetcode","i","love","coding"], 3));
}
