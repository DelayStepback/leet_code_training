import 'dart:collection';

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    HashMap<int, int> map = HashMap();
    for (int num in nums) {
      map[num] = 999;
    }

    for (int i = 0; i < nums.length; i++) {
      if (map[target - nums[i]] != null) {
        final int yInd = nums.indexOf(target - nums[i]);
        if (yInd != i) {
          return [i, yInd];
        }
      }
    }

    // 0(n+ n/2 + n) ± O(n)
    return [0, 0];
  }
}

void main() {
  Solution s = Solution();

  // final nums1 = [2, 7, 11, 15];
  // final target1 = 9;
  // final nums2 = [3, 2, 4];
  // final target2 = 6;
  final nums3 = [-1,-2,-3,-4];
  final target3 = -6;
  print(s.twoSum(nums3, target3));
}
