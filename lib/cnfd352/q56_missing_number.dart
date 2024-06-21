class Solution {
  int missingNumber(List<int> nums) {
    int sumMustBe = 0;
    int sumReal = 0;
    for (int i = 0; i<= nums.length; i++){
        sumMustBe += i;
    }

    for (int i = 0 ; i< nums.length ; i++){
        sumReal += nums[i];
    }

    return sumMustBe - sumReal;
  }
}