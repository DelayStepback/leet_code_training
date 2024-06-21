class Solution {
  int evalRPN(List<String> tokens) {
    List<int> stack = [];
    for (String i in tokens) {
      try {
        int number = int.parse(i);
        stack = [number, ...stack];
      } catch (e) {
        int first = stack.removeAt(0);
        int second = stack.removeAt(0);
        int newValue = evaluateOperation(i, first, second);
        stack = [newValue, ...stack];
      }
    }
    return stack.first;
  }

  evaluateOperation(String operand, int first, int second) {
    switch (operand) {
      case '+':
        return first + second;
      case '-':
        return second - first;
      case '*':
        return first * second;
      case '/':
        return (second / first).truncate();
      default:
        return 0;
    }
  }
}