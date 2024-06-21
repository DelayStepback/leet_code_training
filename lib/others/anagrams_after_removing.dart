class Solution {
  List<String> removeAnagrams(List<String> words) {
    Map<Map<String, int>, List<int>> m = {}; // all anagrams map and last indexes
    for (int z = 0; z < words.length; z++) {
      final word = words[z];
      if (word.length < 2) {
        continue;
      }
      Map<String, int> mW = {};
      for (int i = 0; i < word.length; i++) {
        mW.update(word[i], (v) => v + 1, ifAbsent: () => 1);
      }

      bool eqFinded = false;
      for (var mT in m.keys.toList()) {
        if (_mapEquals(mT, mW)) {
          m.update(mT, (v) => [...v, z], ifAbsent: () => []);
          eqFinded = true;
        }
      }
      if (eqFinded == false) {
        m.update(mW, (v) => [...v, z], ifAbsent: () => []);
      }
    }
    Set<int> valToDel = {};
    for (List<int> val in m.values.toList()) {
      for (int v in val) {
        valToDel.add(v);
      }
    }

    List<String> res = [];
    for (int i = 0; i < words.length; i++) {
      if (!valToDel.contains(i)) {
        res.add(words[i]);
      }
    }
    return res;
  }

  bool _mapEquals(Map m1, Map m2) {
    for (var key in m1.keys.toList()) {
      if (m1[key] != m2[key]) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  print(Solution().removeAnagrams(["abba", "baba", "bbaa", "cd", "cd"]));
}
