class Solution {
  int subarraysDivByK(List<int> nums, int k) {
    int pSum = 0;
    int count = 0;
    final mod = <int, int>{};

    mod[0] = 0;
    for (var x in nums) {
      print(pSum);

      pSum += x;
      int y = pSum.abs() % k;
      if (pSum < 0) y = (k - y) % k;
      mod[y] = (mod[y] == null) ? 0 : mod[y]! + 1;
      count += mod[y] ?? 0;
    }
    print(mod);
    return count;
  
  }
  
}

void main() {
  print(Solution().subarraysDivByK([4, 5, 0, -2, -3, 1], 5));
}
//    [4, 5, 0, -2, -3, 1]  k = 5
// [0, 4, 9, 9, 7, 4, 5]

// [0, 4, 4, 4, 2, 1, 0]   0 % 5 ? in arr
//        1. 1.    2  1
