import 'dart:math';

class Solution {
  int characterReplacement(String s, int k) {
    int l = 0, r = 0;
    int maxf = 0;
    int res = 0;
    var map = {};

    while (r < s.length) {
      map.update(s[r], (value) => value + 1, ifAbsent: () => 1);
      print(map);
      maxf = max(map[s[r]], maxf);

      while ((r - l + 1) - maxf > k) {
        map.update(s[l], (value) => value - 1);
        l++;
      }

      res = max(res, r - l + 1);
      r++;
    }

    return res;
  }
}

void main() {
  // final s = Solution();
  // print(s.characterReplacement('ABAB', 2));
  // print(s.characterReplacement('AABA', 0));
  Map a = {'1': 2, '2': 1};
  Map b = {'2': 1, '1': 2};
  print(a.keys.toList().firstWhere((e) => a[e] != b[e], orElse: () => null,) == null);
  a.update('a', (value) => value + 1, ifAbsent: () => 1);
  print(a.keys.toList().firstWhere((e) => a[e] != b[e], orElse: () => null,) == null);

}
