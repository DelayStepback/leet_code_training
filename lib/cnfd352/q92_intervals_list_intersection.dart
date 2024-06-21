import 'dart:math';

class Solution {
  List<List<int>> intervalIntersection(List<List<int>> firstList, List<List<int>> secondList) {
    int aI = 0;
    int bI = 0;
    List<List<int>> res = [];

    while (aI < firstList.length && bI < secondList.length) {
      if (firstList[aI][1] < secondList[bI][0]) {
        aI++;
        continue;
      }
      if (firstList[aI][0] > secondList[bI][1]) {
        bI++;
        continue;
      }

      int _max = min(firstList[aI][1], secondList[bI][1]);
      int _min = max(firstList[aI][0], secondList[bI][0]);
      if (_max == firstList[aI][1]) {
        aI++;
      } else {
        bI++;
      }

      res.add([_min, _max]);
    }
    return res;
  }
}
