class Solution {
  bool isPalindrome(String s) {
    final prepairedString = _prepareString(s);

    print(prepairedString);
    for (int i = 0; i < prepairedString.length / 2; i++) {
      if (prepairedString[i] != prepairedString[prepairedString.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }

  String _prepareString(String s) {
    var newString = '';
    for (int i = 0; i < s.length; i++) {
      if ((s[i].toLowerCase().codeUnitAt(0) <= 'z'.codeUnitAt(0) &&
              s[i].toLowerCase().codeUnitAt(0) >= 'a'.codeUnitAt(0)) ||
          (s[i].toLowerCase().codeUnitAt(0) <= '9'.codeUnitAt(0) &&
              s[i].toLowerCase().codeUnitAt(0) >= '0'.codeUnitAt(0))) {
        newString += s[i].toLowerCase();
      }
    }
    return newString;
  }
}

void main() {
  Solution s = Solution();
  final word = "A man, a plan, a canal: Panama";

  print(s.isPalindrome(word));
}
