class Solution {
  Map<(int, int), int> mapCoordNum = {};

  int islandInc = 1;

  late final int rows;
  late final int columns;

  int numIslands(List<List<String>> grid) {
    rows = grid.length;
    columns = grid[0].length;
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < columns; j++) {
        spreadFromWithFixedInc(i, j, grid);
        islandInc++;
      }
    }

    final int uniqueValues = mapCoordNum.values.toSet().length;
    print(mapCoordNum);
    return uniqueValues;
  }

  void spreadFromWithFixedInc(int i, int j, List<List<String>> grid) {
    if ((i > rows - 1) || (j > columns - 1) || (i < 0) || (j < 0)) {
      return;
    }

    if (grid[i][j] == '0' || mapCoordNum[(i, j)] != null) {
      return;
    }
    mapCoordNum[(i, j)] = islandInc;
    spreadFromWithFixedInc(i - 1, j, grid);
    spreadFromWithFixedInc(i + 1, j, grid);
    spreadFromWithFixedInc(i, j + 1, grid);
    spreadFromWithFixedInc(i, j - 1, grid);
  }
}

void main() {
  final s = Solution();
  // final grid = [
  //   ["1", "1", "1", "1", "0"],
  //   ["1", "1", "0", "1", "0"],
  //   ["1", "1", "0", "0", "0"],
  //   ["0", "0", "0", "0", "0"]
  // ];

  // final grid2 = [
  //   ["1", "1", "0", "0", "0"],
  //   ["1", "1", "0", "0", "0"],
  //   ["0", "0", "1", "0", "0"],
  //   ["0", "0", "0", "1", "1"]
  // ];

  final grid3 =[["1","1","1"],["0","1","0"],["1","1","1"]];
  print(s.numIslands(grid3));
}
