class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int sidesFree = 0;

    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == 0) {
          continue;
        }
        if ((i - 1) < 0 || grid[i - 1][j] == 0) {
          sidesFree++;
        }
        if ((i + 1) == grid.length || grid[i + 1][j] == 0) {
          sidesFree++;
        }
        if ((j - 1) < 0 || grid[i][j - 1] == 0) {
          sidesFree++;
        }
        if ((j + 1) == grid[0].length || grid[i][j + 1] == 0) {
          sidesFree++;
        }
      }
    }
    return sidesFree;
  }
}

void main() {
  final s = Solution();
  print(s.islandPerimeter([
    [0, 1, 0, 0],
    [1, 1, 1, 0],
    [0, 1, 0, 0],
    [1, 1, 0, 0]
  ]));
}
