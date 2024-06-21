class Solution {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    Set<int> a = {};
    Set<int> b = {};
    List<int> pref = [];
    for (int i = 0; i < A.length; i++){
        a.add(A[i]);
        b.add(B[i]);
        pref.add(a.intersection(b).length);
    }
    return pref;
  }
}