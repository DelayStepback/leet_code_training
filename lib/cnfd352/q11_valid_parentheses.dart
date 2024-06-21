class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (stack.isNotEmpty && stack.last == pairs[s[i]]) {
        stack.removeLast();
      } else {
        stack.add(s[i]);
      }
    }
    return stack.isEmpty;
  }
}

Map<String, String> pairs = {
  ')': '(',
  ']': '[',
  '}': '{',
};

void main() {
  print(Solution().isValid("()[]{}"));
  print(Solution().isValid("()[]}{}"));
  print(Solution().isValid("()[[]]{}"));

}
