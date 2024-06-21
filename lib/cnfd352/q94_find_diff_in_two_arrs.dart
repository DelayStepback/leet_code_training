class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    Set<int> f = {};
    Set<int> s = {};

    List<int> lf = [];
    List<int> ls = [];

    for (int x in nums1){
        f.add(x);
    }
    for (int x in nums2){
        s.add(x);
        if (!f.contains(x)){
            ls.add(x);
            f.add(x);
        }
    }
    
    for (int x in nums1){
        if (!s.contains(x)){
            lf.add(x);
            s.add(x);
        }
    }
    return [lf,ls];
  }
}