class Solution {
  int findUnsortedSubarray(List<int> nums) {
  
    List<int> h = [...nums];
    h.sort();
    int l = 0;
    int r = nums.length -1;

    while (l < nums.length-1){
        if (nums[l] != h[l]){
            break;
        }
        l++;
    }
    while (r > -1){
        if (nums[r] != h[r]){
            break;
        }
        r--;
    }
    if (l == (nums.length -1) && r == -1){
        return 0;
    } else{
        return r-l+1;
    }
  }
}

// [2,6,4,8,10,9,15]