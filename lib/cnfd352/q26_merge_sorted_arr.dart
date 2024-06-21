class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    List<int> res = List.filled(m + n, 0);
    int i = 0;
    int j = 0;
    int z = 0;

    while (i < m || j < n) {
      if (i == m) {
        res[z] = nums2[j];
        j++;
      } else if (j == n) {
        res[z] = nums1[i];
        i++;
      } else {
        if (nums1[i] <= nums2[j]) {
          res[z] = nums1[i];
          i++;
        } else {
          res[z] = nums2[j];
          j++;
        }
      }
      z++;
    }

    for (int z = 0; z < nums1.length; z++) {
      nums1[z] = res[z];
    }
  }
}

void main() {
  final List<int> nums1 = [1, 2, 3, 0, 0, 0];
  final int m = 3;
  final List<int> nums2 = [2, 4, 6];
  final int n = 3;
  Solution s = Solution();
  s.merge(nums1, m, nums2, n);
  print(nums1);
}
