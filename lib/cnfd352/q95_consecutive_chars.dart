class Solution {
  int maxPower(String s) {
    if (s.length == 1){
        return 1;
    }
    if (s == ''){
        return 0;
    }

    int i = 1;
    int maxWidth = 1;
    int c = 1;

    String currEl = s[0];
    while (i < s.length){

        if (s[i] != currEl){
            currEl = s[i];
            if (c > maxWidth){
                maxWidth = c;
            }
            c = 1;
        } else{
            c++;
        }

        i++;
        
    }
    if (c > maxWidth){
                maxWidth = c;
    }
    return maxWidth;
  }
}