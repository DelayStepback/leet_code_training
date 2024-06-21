import 'dart:math';

class Solution {
  int longestOnes(List<int> nums, int k) {
    int l = 0;
    int r = 0;
    int maxC = 0;
    int sK = k;
    while (r < nums.length) {
      if (nums[r] == 0) {
        sK--;
      }
      while (sK < 0) {
        if (nums[l] == 0) {
          sK++;
        }
        l++;
      }
      maxC = max(maxC, r - l + 1);
      r++;
    }
    return maxC;
  }
}

void main() {
  print(Solution().longestOnes([0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3));
  print(Solution().longestOnes([0, 0, 0, 0, 0, 0, 1], 3));
}

// 4/2 = 2