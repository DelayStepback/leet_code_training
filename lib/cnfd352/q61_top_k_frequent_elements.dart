class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> freq ={};

    for (int x in nums){
        if (freq[x] == null){
            freq[x]= 1;
        } else{
            freq[x] = freq[x]! +1;
        }
    }

    final ent = freq.entries.toList();
    ent.sort((a,b) => b.value.compareTo(a.value));
    print(ent);
    return ent.sublist(0,k).map((e) => e.key).toList();
  }
}
void main(){
  final s = Solution();
  print(s.topKFrequent([1,1,1,2,2,3],2));
}