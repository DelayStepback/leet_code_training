class Solution {
  bool _checkMapsEquals(Map a, Map b) {
    for (var key in a.keys.toList()) {
      if (a[key] != b[key]) {
        return false;
      }
    }
    return true;
  }

  bool checkInclusion(String s1, String s2) {
    Map<String, int> perm = <String, int>{};
    Map<String, int> curr = <String, int>{};

    if (s1.length > s2.length) {
      return false;
    }

    // filling
    for (int i = 0; i < s1.length; i++) {
      perm.update(s1[i], (val) => val + 1, ifAbsent: () => 1);
      curr.update(s2[i], (val) => val + 1, ifAbsent: () => 1);

    }

    if (_checkMapsEquals(curr, perm)) {
      return true;
    }
    int left = 0;

    for (int right = s1.length; right < s2.length; right++) {
      curr.update(s2[left], (val) => val - 1, ifAbsent: () => 1);
      curr.removeWhere((key, value) => value == 0);
      curr.update(s2[right], (val) => val + 1, ifAbsent: () => 1);

      if (_checkMapsEquals(curr, perm)) {
        return true;
      }
      left++;
    }
    return false;
  }
 
}
