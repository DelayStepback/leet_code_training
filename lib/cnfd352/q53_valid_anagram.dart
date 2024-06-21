class Solution {
  bool isAnagram(String s, String t) {
    Map<String, int> anMap = {};

    for (int i = 0; i < s.length; i++) {
      if (anMap[s[i]] != null) {
        anMap[s[i]] = anMap[s[i]]! + 1;
      } else {
        anMap[s[i]] = 1;
      }
    }
    for (int i = 0; i < t.length; i++) {
      if (anMap[t[i]] != null) {
        if (anMap[t[i]] == 1) {
          anMap.remove(t[i]);
        } else {
          anMap[t[i]] = anMap[t[i]]! - 1;
        }
      } else {
        return false;
      }
    }
    return anMap.isEmpty;
  }
}
