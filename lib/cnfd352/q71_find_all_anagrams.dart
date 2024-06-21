class Solution {
  List<int> findAnagrams(String s, String p) {
    Map<String, int> pMap = <String, int>{};
    Map<String, int> wwMap = <String, int>{};
    if (p.length > s.length) {
      return [];
    }

    for (int i = 0; i < p.length; i++) {
      pMap.update(p[i], (value) => value + 1, ifAbsent: () => 1);
    }
    for (int i = 0; i < p.length; i++) {
      wwMap.update(s[i], (value) => value + 1, ifAbsent: () => 1);
    }

    
    List<int> poses = [];
    for (int i = p.length; i < s.length + 1; i++) {
      if (_checkMapsEquals(pMap, wwMap)) {
        poses.add(i - p.length);
      }
      if (i == s.length) {
        continue;
      }
      if (wwMap[s[i - p.length]] == 1) {
        wwMap.remove(s[i - p.length]);
      } else {
        wwMap[s[i - p.length]] = wwMap[s[i - p.length]]! - 1;
      }
      wwMap.update(s[i], (value) => value + 1, ifAbsent: () => 1);
    }
    return poses;
  }

  bool _checkMapsEquals(Map a, Map b) {
    print('a $a');
    print('b $b');
    return a.keys.every((key) => a[key] == b[key]);
  }
}

void main() {
  final s = Solution();
  print(s.findAnagrams('cbaebabacd', 'abc'));
}
