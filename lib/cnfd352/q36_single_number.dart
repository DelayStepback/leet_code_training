class Solution {
  int singleNumber(List<int> nums) {
      Set single = <int>{};
      for (var i in nums){
        if (single.contains(i)){
          single.remove(i);
        } else{
          single.add(i);
        }
      }
    return single.first;
  }
}

void main(){
  Solution s = Solution();
  print(s.singleNumber([2,2,1]));
}