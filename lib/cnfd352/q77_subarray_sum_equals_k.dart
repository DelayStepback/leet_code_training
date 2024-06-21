class Solution {
  int subarraySum(List<int> nums, int k) {
    Map<int, int> s = {};
    int pre = 0;
    int count = 0;
    for (int x in nums) {
      s.update(pre, (value) => value + 1, ifAbsent: () => 1);

      pre += x;
      if (s[pre - k] != null) {
        count += s[pre - k]!;
      }
    }
    return count;
  }
}
