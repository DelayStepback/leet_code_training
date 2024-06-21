class Solution {
  bool checkSubarraySum(List<int> nums, int k) {
    Set<int> modSet = Set();
    int currSum = 0, prevSum = 0;
    for (int n in nums) {
      currSum += n;
      int mod = currSum % k;
      if (modSet.contains(mod)) {
        return true;
      }
      currSum = mod;
      modSet.add(prevSum);
      prevSum = currSum;
    }
    return false;
  }
}
