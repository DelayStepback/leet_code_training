import 'dart:io';

int minTrips(List<int> weights, int k) {
  weights.sort();
  int left = 0;
  int right = weights.length - 1;
  int trips = 0;

  while (left <= right) {
    if (left == right) {
      trips += 1;
      break;
    }
    if (weights[left] + weights[right] <= k) {
      left += 1;
    }
    right -= 1;
    trips += 1;
  }

  return trips;
}

void main() {
  File file = File('input.txt');
  String nk = file.readAsLinesSync()[0];
  int n = int.parse(nk.split(' ')[0]);
  int k = int.parse(nk.split(' ')[1]);

  List<int> nums = file.readAsLinesSync()[1].split(' ').map((e) => int.parse(e)).toList();

  if (nums.firstWhere(
        (element) => element > k,
        orElse: () => -1,
      ) !=
      -1) {
    print('Impossible');
  } else {
    print(minTrips(nums, k));
  }
}
