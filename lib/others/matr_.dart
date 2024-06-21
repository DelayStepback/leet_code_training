class Solution {
  void setZeroes(List<List<int>> matrix) {
    Set<(int, int)> coords = {};
    for (int i = 0; i < matrix.length; i++) {
      for (int j = 0; j < matrix[0].length; j++) {
        if (matrix[i][j] == 0 && !coords.contains((i, j))) {
          for (int flowLeft = j - 1; flowLeft > -1; flowLeft--) {
            matrix[i][flowLeft] = 0;
            coords.add((i, flowLeft));
          }

          for (int flowRight = j + 1; flowRight < matrix[0].length; flowRight++) {
            matrix[i][flowRight] = 0;
            coords.add((i, flowRight));
          }

          for (int flowUp = i - 1; flowUp > -1; flowUp--) {
            matrix[flowUp][j] = 0;
            coords.add((flowUp, j));
          }

          for (int flowDown = i + 1; flowDown < matrix.length; flowDown++) {
            matrix[flowDown][j] = 0;
            coords.add((flowDown, j));
          }
        }
      }
    }
  }
}

void main() {
  final f = [
    [1, 1, 1],
    [1, 0, 1],
    [1, 1, 1]
  ];
  Solution().setZeroes(f);
  print(f);
}

/*

[[1,0,0],
 [0,0,0],
 [0,0,0]]
 */