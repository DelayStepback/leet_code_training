class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    List<List<int>> merged = [];

    intervals.sort((a, b) => a[0].compareTo(b[0]));

    for (int i = 0; i < intervals.length; i++) {
      int currLeft = intervals[i][0];
      int currRight = intervals[i][1];
      while (i < intervals.length - 1 && intervals[i + 1][0] <= currRight) {
        if (intervals[i + 1][1] > currRight) {
          currRight = intervals[i + 1][1];
        }
        i++;
      }
      merged.add([currLeft, currRight]);
    }

    return merged;
  }
}

void main() {
  List<List<int>> intervals = [
    [1, 3],
    [2, 4],
    [4, 9],
    [7, 100],
    [88, 130],
    [1000, 2000],
  ];
  final s = Solution();
  print(s.merge(intervals));
}
