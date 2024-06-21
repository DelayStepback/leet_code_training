class Solution {
  int numJewelsInStones(String jewels, String stones) {
    Set<String> jewSet = {};
    for (int i =0; i< jewels.length; i++){
        jewSet.add(jewels[i]);
    }
    int count =0;
    for (int i =0; i<stones.length; i++){
        if (jewSet.contains(stones[i])){
            count++;
        }
    }
    return count;
  }
}