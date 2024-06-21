import 'dart:io';
import 'dart:math';

void main() {
  // File file = File('input.txt');
  // int n = int.parse(file.readAsLinesSync()[0]);
  // print(n);

  // int n = 5;
  // List<int> a = [1, 0, 4, 5, 100];

  int n = 4;
  List<int> a = [25, 50, 100, 75];

  Map<int, int> m = {};
  for (int i = 0; i < a.length; i++) {
    int sqr = sqrt(a[i]).truncate();
  
  }

  print(m);
  int maxVal = 0;
  for  (var key in m.keys.toList()) {
    if (m[key]! > maxVal && key > 1) {
      maxVal = m[key]!;
    }
  }

  final res = m.keys.lastWhere((e) => m[e] == maxVal);
  print(m[res]);
}
