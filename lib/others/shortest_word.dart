class Solution {
  String shortestCompletingWord(String licensePlate, List<String> words) {
    int aCode = 'a'.codeUnitAt(0);
    int zCode = 'z'.codeUnitAt(0);

    Map<String, int> license = {};
    for (int i = 0; i < licensePlate.length; i++) {
      int codeEl = licensePlate[i].toLowerCase().codeUnitAt(0);
      if (codeEl >= aCode && zCode >= codeEl) {
        license.update(licensePlate[i].toLowerCase(), (v) => v + 1, ifAbsent: () => 1);
      }
    }
    print(license);
    String shortest = '';
    for (String word in words) {
      Map<String, int> currLic = {};
      for (int i = 0; i < word.length; i++) {
        currLic.update(word[i].toLowerCase(), (v) => v + 1, ifAbsent: () => 1);
      }
      print(currLic);
      if (_checkMapFirstContainsSecond(currLic, license)) {
        if (shortest == '') {
          shortest = word;
        } else {
          shortest = shortest.length <= word.length ? shortest : word;
        }
      }
    }
    return shortest;
  }

  bool _checkMapFirstContainsSecond(Map<String, int> m1, Map<String, int> m2) {
    for (String k in m2.keys.toList()) {
      if ( m1[k] == null || (m1[k]! < m2[k]!)) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  print(Solution().shortestCompletingWord("GrC8950", ["measure","other","every","base","according","level","meeting","none","marriage","rest"]));
}