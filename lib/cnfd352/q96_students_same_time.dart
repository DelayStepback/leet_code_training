class Solution {
  int busyStudent(List<int> startTime, List<int> endTime, int queryTime) {
    int c = 0;
    for (int i = 0 ; i < startTime.length; i++){
        if (startTime[i] <= queryTime && endTime[i] >= queryTime){
            c++;
        }
    }
    return c;
  }
}