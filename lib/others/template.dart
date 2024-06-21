import 'dart:math';

void main() {
    print(Solution().compareVersion('0.1', '1.1'));
}


class Solution {
  int compareVersion(String version1, String version2) {
    List<String> v1 = version1.split('.');
    List<String> v2 = version2.split('.');
    int len = min(v1.length,v2.length);
    for (int i = 0 ; i< len; i++){
        int i1 = v1[i].split('').indexWhere((v) => v != '0');
        int i2 = v2[i].split('').indexWhere((v) => v != '0');
        if (i1 == -1){
            i1 = 0;
        }    if (i2 == -1){
            i2 = 0;
        }


        int value1 = int.parse(v1[i].substring(i1));
        int value2 = int.parse(v2[i].substring(i2));
        print('$value1, $value2');
        if (value1 > value2){
            return 1;
        } else if (value1 < value2){
            return -1;
        }
    }
    return 0;
  }
}