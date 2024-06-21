class Solution {
  int arithmeticTriplets(List<int> nums, int diff) {
    Map<int, List<int>> m = {};

    for (int x in nums) {
      m[x] = [0, 0];
    }

    for (int x in nums) {
      if (m[x - diff] != null) {
        m[x] = [m[x]![0] + 1, m[x]![1]];
      }
      if (m[x + diff] != null) {
        m[x] = [m[x]![0], m[x]![1] + 1];
      }
    }
    print(m);
    int c = 0;
    for (List<int> value in m.values.toList()) {
      if (value[0] == value[1] && value[0] != 0) {
        c++;
      }
    }

    return c;
  }
}

void main() {
  print(Solution().arithmeticTriplets([0, 1, 4, 6, 7, 10], 3));
}
