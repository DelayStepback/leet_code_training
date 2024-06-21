class Solution {
  bool isSubsequence(String s, String t) {
    int passedSymbols = 0;

    if (s.isEmpty){
        return true;
    }
    if (s.length > t.length){
        return false;
    }
    

    for (int i = 0; i< t.length; i++){
        if (t[i] == s[passedSymbols]){
            passedSymbols++;
            if (passedSymbols == s.length){
                return true;
            }
        }
    }
    return false;
  }
}