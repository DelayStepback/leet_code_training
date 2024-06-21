import 'dart:math';
class Solution {
  String longestNiceSubstring(String s) {
    if (s.length < 2) return '';

    List<String> arr = s.split('');
    Set<String> setS = Set.from(arr);
    for (int i = 0; i< arr.length; i++){
        if (setS.contains(arr[i].toUpperCase()) && setS.contains(arr[i].toLowerCase())) continue;
        String subLeft = longestNiceSubstring(s.substring(0,i));
        String subRight = longestNiceSubstring(s.substring(i+1));
        return subLeft.length >= subRight.length ? subLeft : subRight;
    }
    return s;
  }
}

// O(N^2) time bad, middle O(n*logn)