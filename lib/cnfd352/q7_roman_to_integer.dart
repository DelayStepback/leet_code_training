

class Solution {
  Map<String, int> m = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };
  int romanToInt(String s) {
    int sum = 0;

    for (int i = 0; i < s.length - 1; i++) {
      if ((m[s[i]]!) < (m[s[i + 1]] ?? 0)) {
        sum -= m[s[i]]!;
      } else {
        sum += m[s[i]]!;
      }
    }

    return sum + (m[s[s.length - 1]] ?? 0);
  }
}

void main() {
  // String s1 = "III"; // 3
  // String s2 = "LVIII"; //
  String s3 = "MCMXCIV";
  print(Solution().romanToInt(s3));
}
