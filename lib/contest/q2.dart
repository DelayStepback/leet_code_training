import 'dart:io';

void main() {
  File file = File('bin/contest/input.txt');

  /*
  5 10

  4 6 7
  2 3 3
  1 1 4
  2 3 1
  2 4 5
  */
  
  String s0 = file.readAsLinesSync()[0];
  List<String> kt = s0.split(' ');
  int k = int.parse(kt.first);
  int t = int.parse(kt.last);

  List<int> starts = [];
  List<int> ends = [];
  List<int> perioids = [];

  for (int i = 0; i < k; i++) {
    String startEndPerioid = file.readAsLinesSync()[i + 1];
    List<String> _startEndPerioid = startEndPerioid.split(' ');
    starts.add(int.parse(_startEndPerioid[0]));
    ends.add(int.parse(_startEndPerioid[1]));
    perioids.add(int.parse(_startEndPerioid[2]));
  }

  List<List<int>> intervals = [];

  for (int i = 0; i < k; i++) {
    intervals.add([ends[i], starts[i] + perioids[i]]);
  }

  final merged = (merge(intervals));

  if (merged.length > 1) {
    print('No');
  } else {
    print((merged[0][1] - merged[0][0]) == t ? 'Yes' : 'No');
  }
}

List<List<int>> merge(List<List<int>> intervals) {
  if (intervals.length == 1) {
    return intervals;
  }
  intervals.sort((a, b) => a[0].compareTo(b[0]));
  List<List<int>> ans = [intervals[0]];
  for (int i = 0; i < intervals.length - 1; i++) {
    if (intervals[i + 1][0] <= ans[ans.length - 1][1]) {
      if (ans[ans.length - 1][1] < intervals[i + 1][1]) {
        ans[ans.length - 1][1] = intervals[i + 1][1];
      }
    } else {
      if (ans[0].length == 1) {
        ans[0] = intervals[0];
      }
      ans.add(intervals[i + 1]);
    }
  }
  return ans;
}

