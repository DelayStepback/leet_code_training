class Solution {
  void moveZeroes(List<int> nums) {
    List<int> freePoses = [];
    for (int i =0; i < nums.length; i ++){
        if (nums[i] == 0){
            freePoses.add(i);
        }
        else if (freePoses.isNotEmpty){
            nums[freePoses.removeAt(0)] = nums[i];
            freePoses.add(i);
            nums[i] = 0;
        }
    }

  }
}