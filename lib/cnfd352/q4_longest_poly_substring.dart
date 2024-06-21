class Solution {
    int leftIntro = 0;
    int maxLen = 0;
  String longestPalindrome(String s) {
    if (s.isEmpty){
        return "";
    }
    if (s.length == 1){
        return s;
    }

    List<String> sC = s.split('');

    for  (int i = 0; i< s.length; i++){
        extendPalindrome(sC, i, i);
        extendPalindrome(sC, i, i+1);
    }
    return s.substring(leftIntro, leftIntro + maxLen);
  }

  void extendPalindrome(List<String> s, int j, int k){
    while(j >= 0 && k<s.length && s[j]==s[k]){
        j--;
        k++;
    }
    if (maxLen < k - j - 1){
        leftIntro = j+1;
        maxLen = k - j - 1;
    }
  }
}


// bbabbcde