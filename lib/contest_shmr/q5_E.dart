import 'dart:io';

int charDistance(String char1, String char2) {
  int pos1 = char1.codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
  int pos2 = char2.codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
  return (pos2 - pos1).abs();
}

String findMinChar(String input) {
  return String.fromCharCode(input.runes.reduce((a, b) => a < b ? a : b));
}

String findMaxChar(String input) {
  return String.fromCharCode(input.runes.reduce((a, b) => a > b ? a : b));
}

void main() {
  File file = File('input.txt');
  String nlr = file.readAsLinesSync()[0];
  int n = int.parse(nlr.split(' ')[0]);
  int minWordLength = int.parse(nlr.split(' ')[1]);
  int maxWordLength = int.parse(nlr.split(' ')[2]);

  String s = file.readAsLinesSync()[1];

  List<String> sliced = [];

  int sum = 0;
  int l = 0;
  int r = 0;

  while (r != n) {
    l = r;
    r += minWordLength;
    if (r >= n) {
      String resWord = s.substring(l);
      sliced.add(resWord);
      sum += charDistance(findMaxChar(resWord), findMinChar(resWord));
      break;
    }

    String currWord = s.substring(l, r);
    Set<String> currWordSet = {};
    for (int i = 0; i < currWord.length; i++) {
      currWordSet.add(currWord[i]);
    }

    

    // moving right
    try {
      while (r< n && !currWordSet.contains(s[r]) && (r - l < maxWordLength)) {
        r++;
      }
    } catch (e) {}

    if (n - r < minWordLength && n - l <= maxWordLength) {
      r = n;
    } else if (n - r < minWordLength && !(n - l <= maxWordLength)) {
      print('NO SOLUTION');
      return;
    }

    // forming res
    String resWord = '';
    try {
      resWord = s.substring(l, r);
    } catch (e) {
      resWord = s.substring(l);
    }
    if (resWord != '') {
      sliced.add(resWord);
      sum += charDistance(findMaxChar(resWord), findMinChar(resWord));
    }
  }

  if (sliced.firstWhere((element) => element.length < minWordLength, orElse: () => '-1') != '-1') {
    print('NO SOLUTION');
  } else {
    print(sum);
    print(sliced.length);
    for (String word in sliced) {
      print(word);
    }
  }
}
