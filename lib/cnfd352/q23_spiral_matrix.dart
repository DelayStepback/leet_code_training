class Solution {
  List<List<int>> generateMatrix(int n) {
    List<List<int>> matr = List.filled(n, []);
    for (int z = 0; z < matr.length; z++) {
      matr[z] = List.filled(n, 0);
    }
    int l = 0;
    int u = 0;
    int r = n - 1;
    int d = n - 1;

    int i = 0;
    int j = 0;

    int counter = 1;
    int si = n * n;
    Moving moveT = Moving.right;
    while (counter < si) {
      matr[i][j] = counter;
      switch (moveT) {
        case Moving.left:
          if (j > l) {
            j--;
          }
          if (j == l) {
            d--;
            moveT = Moving.up;
          }
          break;
        case Moving.right:
          if (j < r) {
            j++;
          }
          if (j == r) {
            u++;
            moveT = Moving.down;
          }
          break;
        case Moving.up:
          if (i > u) {
            i--;
          }
          if (i == u) {
            l++;
            moveT = Moving.right;
          }
          break;
        case Moving.down:
          if (i < d) {
            i++;
          }
          if (i == d) {
            r--;
            moveT = Moving.left;
          }
          break;
      }
      counter++;
    }
    matr[i][j] = counter;
    return matr;
  }
}
/*
[[1,2,3],
 [8,9,4],
 [7,6,5]]
 */

enum Moving { left, right, up, down }

void main() {
  print(Solution().generateMatrix(6));
}
/*
[[1, 2,  3,  4,  5,  6], 
[20, 21, 22, 23, 24, 7], 
[19, 32, 33, 34, 25, 8], 
[18, 31, 36, 35, 26, 9], 
[17, 30, 29, 28, 27, 10], 
[16, 15, 14, 13, 12, 11]]


 */