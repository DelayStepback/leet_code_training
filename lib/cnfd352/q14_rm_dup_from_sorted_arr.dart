class Solution {
  int removeDuplicates(List<int> nums) {
    final alreadyTaken = <int>{};
    final newList = <int>[];
    int c = 0;
    for (int i = 0; i < nums.length; i++) {
      if (alreadyTaken.contains(nums[i])) {
        continue;
      } else {
        alreadyTaken.add(nums[i]);
        newList.add(nums[i]);
        c++;
      }
    }
    for (int i = 0; i < newList.length; i++){
      nums[i] = newList[i];
    }
    return c;
  }
}

// class Solution {
//   int removeDuplicates(List<int> nums) {
//     int k = 0;
//     for(int i = 1; i < nums.length; i++) {
//         if(nums[i - 1] != nums[i]) {
//             k++;
//             nums[k] = nums[i];
//         }
//     }
//     return k + 1;
//   }
// }
void main() {
  List<int> a = [0,0,1,1,1,2,2,3,3,4];
  print(Solution().removeDuplicates(a));
  print(a);
}
