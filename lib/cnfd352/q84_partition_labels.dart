class Solution {
  List<int> partitionLabels(String s) {
    Map<String, int> lastSeen = {};
    for (int i = 0; i < s.length; i++) {
      lastSeen[s[i]] = i;
    }

    int l = 0;
    int r = 0;
    List<int> wordsLengths = [];

    for (int i = 0; i < s.length; i++) {
      int currLastIndex = lastSeen[s[i]]!;

      r = (r > currLastIndex) ? r : currLastIndex;

      if (i == r) {
        wordsLengths.add(r - l + 1);
        l = r + 1;
      }
    }

    return wordsLengths;
  }
}

void main() {
  final s = Solution();
  print(s.partitionLabels("ababcbacadefegdehijhklij"));
}
