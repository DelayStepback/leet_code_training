class Solution {
  List<int> findClosestElements(List<int> arr, int k, int x) {

    if (arr.isEmpty) {
      return [];
    }
    if (x <= arr.first) {
      return arr.sublist(0, k);
    }
    if (x >= arr.last) {
      return arr.sublist(arr.length - k );
    }
    if (arr.length == 1) {
      return [arr.first];
    }

    int l = 0;
    int r = 0;

    int i = 0;
    while (!(arr[i] <= x && x < arr[i + 1])) {
      i++;
    }
    l = i;
    r = i + 1;

    List<int> res = [];
    while (res.length != k) {
      if (r == arr.length || l > -1 && (arr[l] - x).abs() <= (arr[r] - x).abs()) {
        res.add(arr[l]);
        l--;
      } else {
        res.add(arr[r]);
        r++;
      }
    }
    res.sort();

    return res;
  }
}