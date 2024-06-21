class Solution {
  int firstUniqChar(String s) {
    Map<String, int> m = {};

    for (int i = 0; i< s.length; i++){
        if (m[s[i]] != null){
            m[s[i]] = m[s[i]]! + 1;
        }
        else{
            m[s[i]] =1;
        }
    }

    for (int i = 0; i< s.length; i++){
        if (m[s[i]] != null && m[s[i]]! == 1){
            return i;
        }
    }
    return -1;
  }
}