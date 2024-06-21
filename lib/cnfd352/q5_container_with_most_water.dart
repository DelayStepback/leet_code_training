import 'dart:math';
class Solution {
  int maxArea(List<int> height) {
    int l = 0;
    int r = height.length-1;
    int res = 0;
    while (l< r){
         res = max(res, min(height[l], height[r]) * (r-l) );
        if (height[l] < height[r]){
            l++;
        } else{
            r--;
        }
    }
    return res;
  }

}


