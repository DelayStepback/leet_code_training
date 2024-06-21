class Solution {
  int compress(List<String> chars) {
    if (chars.isEmpty) {
      return 0;
    }

    int res = 0;

    int writer = 0;
    int currEl = 0;
    int pos = 0;

    int countWidth = 0;

    while (pos < chars.length) {
      if (chars[currEl] == chars[pos]) {
        pos++;
        countWidth++;
      }
      if (pos == chars.length || chars[currEl] != chars[pos]) {
        chars[writer] = chars[currEl];
        writer += 1;
        String cWS = countWidth.toString();
        if (countWidth != 1) {
          for (int c = 0; c < cWS.length; c++) {
            if (writer >= chars.length) {
              chars.add(cWS[c]);
            } else {
              chars[writer] = cWS[c];
            }
            writer++;
          }
          res += 1 + cWS.length;
        } else {
          res += 1;
        }



        if (pos == chars.length) {
          continue;
        }
        countWidth = 0;
        // pos = writer;
        currEl = pos;
      }
    }
    print(chars);
    return res;
  }
}

void main() {
  print(Solution().compress(["a", "a", "a", "b", "b", "a", "a"]));
}
