class RecentCounter {
  RecentCounter() {}

  List<int> q = [];

  int ping(int t) {
    q.add(t);
    while (q.first < t - 3000) {
      q.removeAt(0);
    }
    return q.length;
  }
}
