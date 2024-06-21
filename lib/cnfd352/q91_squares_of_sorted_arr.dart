class Solution {
  List<int> sortedSquares(List<int> nums) {
    
    int l = 0;
    int r = nums.length-1;
    List<int> res = [];
    while (l <= r){
        if (nums[l].abs() > nums[r].abs()){
            int x = nums[l];
            res.add(x*x);
            l++;
        } else{
            int x = nums[r];
            res.add(x*x);
            r--;
        }
        
    }
   return res.reversed.toList();
  }
}
// [-25,-12,-5,-3]
//                 i

// [1, 2, 4, 5, 9]
//  i

// [-25, -3, 5, 9, 17, 25]
//    l                 r