import 'dart:io';

int countVowels(String word) {
  final vowels = RegExp(r'[aeiou]', caseSensitive: false);
  return vowels.allMatches(word).length;
}

void main() {
  File file = File('input.txt');
  int n = int.parse(file.readAsLinesSync()[0]);
  List<String> words = [];
  for (int i = 0; i< n; i++){
    words.add(file.readAsLinesSync()[i+1]);
  }

  words.sort((a, b) {
    int vowelCountA = countVowels(a);
    int vowelCountB = countVowels(b);
    if (vowelCountA != vowelCountB) {
      return vowelCountB.compareTo(vowelCountA);
    } else if (a.length != b.length) {
      return a.length.compareTo(b.length);
    } else if (a.length == b.length){
      return 0;
    }
    return 0;
  });
  words.forEach(print);
}