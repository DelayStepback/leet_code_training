class Solution {
  List<String> summaryRanges(List<int> nums) {
    final List<List<int>> resRanges = [];
    if (nums.isEmpty) {
      return [];
    }
    if (nums.length == 1) {
      return ["${nums.first}"];
    }

    int leftR = nums[0];

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] - nums[i - 1] != 1) {
        resRanges.add([leftR, nums[i - 1]]);
        leftR = nums[i];

        if (leftR == nums[nums.length - 1]) {
          resRanges.add([leftR, leftR]);
        }
      } else if (i == (nums.length - 1)) {
        resRanges.add([leftR, nums[i]]);
      }
    }

    return resRanges.map((e) {
      if (e[0] == e[1]) {
        return "${e[0]}";
      }
      return "${e[0]}->${e[1]}";
    }).toList();
  }
}
/// [0,1,2,4,5,7]
/// [0,1,2,4,5,6,7]
/// 
/// [0,2,3,4,6,8,9]
/// 
/// [1,2,3,7,10]