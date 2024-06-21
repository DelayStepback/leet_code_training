class Solution {
  Map map = <String, String>{};
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    for (int i = 0; i < s.length; i++) {
      if (map[s[i]] != null || map.values.firstWhere((e)=> e == t[i], orElse: ()=> '-1') != '-1') {
        if (map[s[i]] != t[i]) {
          return false;
        }
      } else {
        map[s[i]] = t[i];
      }
    }

    return true;
  }
}

void main() {
  final s = "bada";
  final t = "bada";

  final Solution ss = Solution();
  print(ss.isIsomorphic(s, t));
}
