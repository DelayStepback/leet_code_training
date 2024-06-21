import 'dart:collection';

class MyQueue {
  Queue a = Queue<int>();

  MyQueue() {}

  void push(int x) {
    a.add(x);
  }

  int pop() {
    return a.removeLast();
  }

  int peek() {
    return a.first;
  }

  bool empty() {
    return a.isEmpty;
  }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = MyQueue();
 * obj.push(x);
 * int param2 = obj.pop();
 * int param3 = obj.peek();
 * bool param4 = obj.empty();
 */