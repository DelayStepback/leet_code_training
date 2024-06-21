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
          final toReturn = [i + 1, yInd + 1];
          toReturn.sort((a, b) => a.compareTo(b));
          print('toReturn $toReturn');
          return [i + 1, yInd + 1];
        }
      }
    }

    // 0(n+ n/2 + n) ± O(n)
    return [0, 0];
  }
}

void main() {
  Solution s = Solution();

  print(s.twoSum([0, 0, 3, 4], 0));
  print(s.twoSum([-10, -7, -4, 3, 15], -1));
}
