class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    int m = matrix.length;
    int n = matrix[0].length;

    int u = 0;
    int d = m - 1;
    int midI = -1;
    while (u <= d) {
      int midInd = (d + u) ~/ 2;
      if (matrix[midInd][n - 1] < target) {
        u = midInd + 1;
      } else if (matrix[midInd][0] > target) {
        d = midInd - 1;
      } else {
        midI = midInd;
        break;
      }
    }
    if (midI == -1) return false;

    int l = 0;
    int r = n - 1;
    int midJ = -1;
    while (l <= r) {
      int midInd = (l + r) ~/ 2;
      if (matrix[midI][midInd] < target) {
        l = midInd + 1;
      } else if (matrix[midI][midInd] > target) {
        r = midInd - 1;
      } else {
        midJ = midInd;
        break;
      }
    }
    if (midJ == -1) return false;

    return true;
  }
}

void main() {
  print(Solution().searchMatrix([
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 60]
  ], 4));
}
