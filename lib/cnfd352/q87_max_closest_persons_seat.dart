// class Solution {
//   int maxDistToClosest(List<int> seats) {
//     int lwF = 0;
//     while (seats[lwF] != 1) {
//       lwF++;
//     }
//     int rwF = seats.length - 1;
//     while (seats[rwF] != 1) {
//       rwF--;
//     }

//     int l = lwF;
//     int maxW = 0;
//     while (l < rwF) {
//       int c = 0;
//       while (seats[l] == 1 && l < rwF) {
//         l++;
//       }
//       while (seats[l] == 0) {
//         c++;
//         l++;
//       }
//       if (c > maxW) {
//         maxW = c;
//       }
//     }
//     maxW = maxW ~/ 2 + maxW % 2;
//     int totalLW = lwF;
//     int totalRW = seats.length - 1 - rwF;
//     int total = totalLW > totalRW ? totalLW : totalRW;
//     total = total > maxW ? total : maxW;
//     return total;
//   }
// }

// [1,0,0,0,0,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,1]

// [0,0,0,0,0,0,1,0,0,0,1]

// [0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0]


// 2 / x = 1
// 3 / x = 2
// 4 / x = 2
// 

// [1,0,0,0,0,1]

// ЭТО ЛУЧШЕ не мое

import 'dart:math';

class Solution {
  int maxDistToClosest(List<int> seats) {
      final len = seats.length;
      int dis = 0;

      for(int l = 0, r = 0; r < len; ++r) {
          final tail = seats[r];

          if(tail == 1 || r == len - 1) {
            final cur = (r - l) ~/ (seats[l] + tail);
            dis = max(dis, cur);
            l = r;
          }
      }

      return dis;
  }
}