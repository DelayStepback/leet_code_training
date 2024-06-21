class Solution {
  int strStr(String haystack, String needle) {
    if (needle.length > haystack.length){
      return -1;
    }

    for (int i = 0; i <= haystack.length - needle.length; i++){
      int passedRight = 0;
      while (passedRight < needle.length && haystack[i+ passedRight] == needle[passedRight] ){
        passedRight++;
      }
      if (passedRight == needle.length){
        return i;
      }
    }
    return -1;
  }
}

void main(){
  print(Solution().strStr('mississippi', 'issip'));
}