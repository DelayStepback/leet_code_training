import 'dart:io';

int countUniques(String moves) {
  Map<(int, int), int> m = {};

  (int, int) currCoords = (0, 0); // [x,y]
  m[currCoords] = 1;
  for (int i = 0; i < moves.length; i++) {
    if (moves[i] == 'U') {
      currCoords = (currCoords.$1, currCoords.$2 + 1);
    } else if (moves[i] == 'D') {
      currCoords = (currCoords.$1, currCoords.$2 - 1);
    } else if (moves[i] == 'L') {
      currCoords = (currCoords.$1 - 1, currCoords.$2);
    } else {
      currCoords = (currCoords.$1 + 1, currCoords.$2);
    }
    m.update(currCoords, (v) => v + 1, ifAbsent: () => 1);
  }
  print(m);

  return m.values.where((element) => element > 1).toList().length;
}

void main() {
  File file = File('input.txt');
  String val = file.readAsLinesSync()[0];

  print(countUniques(val));
}
