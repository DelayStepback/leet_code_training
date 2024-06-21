import 'dart:io';

// void main() {
//   File file = File('bin/contest_shmr/input.txt');
//   String val = file.readAsLinesSync()[0];
//   List<int> nums = val.split(' ').map((e) => int.parse(e)).toList();

//   int sum = 0;
//   for (int val in nums){
//     sum += val;
//   }

// }

bool canChooseTwoNumbers(List<int> nums, int targetSum) {
  Map<int, bool> remainingValues = {};
  for (int num in nums) {
    int remaining = targetSum - num;
    if (remainingValues.containsKey(remaining)) {
      return true;
    }
    remainingValues[num] = true;
  }
  return false;
}

void main() {
  File file = File('input.txt');
  String val = file.readAsLinesSync()[0];
  List<int> nums = val.split(' ').map((e) => int.parse(e)).toList();

  // List<int> nums = [1, 2, 3];
  bool canChoose = false;
  for (int num in nums) {
    canChoose = canChooseTwoNumbers(nums, num);
    if (canChoose) {
      break;
    }
  }
  print(canChoose == true ? 'YES' : 'NO');
}
