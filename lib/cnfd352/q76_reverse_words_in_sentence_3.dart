class Solution {
  String reverseWords(String s) {

    List<String> words = s.split(' ');
    List<String> reversedWords = [];
    for (var word in words ){
        String revWord = '';
        for (int i = word.length-1; i > -1; i--){
            revWord += word[i];
        }
        reversedWords.add(revWord);
    }
    String res = '';
    for (int i = 0; i< reversedWords.length; i++){
        res += reversedWords[i];
        if (i != reversedWords.length-1){
            res+= ' ';
        }
    }
    return res;

  }
}