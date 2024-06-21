class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> toIntersect = {};
    List<int> res = [];

    for (int x in nums1) {
      if (toIntersect[x] == null) {
        toIntersect[x] = 1;
      } else {
        toIntersect[x] = toIntersect[x]! + 1;
      }
    }

    for (int x in nums2) {
      if (toIntersect[x] != null) {
        res.add(x);
        if (toIntersect[x] == 1) {
          toIntersect.remove(x);
        } else {
          toIntersect[x] = toIntersect[x]! - 1;
        }
      }
    }
    return res;
  }
}
