class Solution {
  int findMin(List<int> nums) {
    final min = nums[0];
    for (int i =1 ; i< nums.length; i++){
      if (nums[i] < nums[i-1]){
        return nums[i];
      }
    }
    return min;
  }
}

void main(){
  final s = Solution();
  final abc = s.findMin([3,4,5,1,2]);
  print(abc);
}