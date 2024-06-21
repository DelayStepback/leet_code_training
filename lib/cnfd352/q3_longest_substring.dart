class Solution {
  int lengthOfLongestSubstring(String s) {
    int maxCount = 0;
    int left = 0;

    Map<String, int> lastSeenMap = {};

    for (int right = 0; right < s.length; right++) {

      if (lastSeenMap[s[right]] != null && left <= lastSeenMap[s[right]]!) {
        left = lastSeenMap[s[right]]! + 1;
      } 


      lastSeenMap[s[right]] = right;

      if (right-left+1 > maxCount){
        maxCount = right-left+1;
      }
      
    }
    return maxCount;
  }
}

void main() {
  Solution s = Solution();
  print(s.lengthOfLongestSubstring("a"));
}
