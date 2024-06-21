class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
  @override
  String toString() {
    if (next == null) {
      return val.toString();
    } else {
      return '${val}-${next.toString()}';
    }
  }
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode res = ListNode(0);
    ListNode? resLast = res;
    while (list1 != null || list2 != null) {
      if (list1 == null) {
        resLast?.next = ListNode(list2!.val);
        list2 = list2?.next;
      } else if (list2 == null) {
        resLast?.next = ListNode(list1.val);
        list1 = list1.next;
      } else {
        if (list1.val <= list2.val) {
          resLast?.next = ListNode(list1.val);
          list1 = list1.next;
        } else {
          resLast!.next = ListNode(list2.val);
          list2 = list2.next;
        }
      }
      resLast = resLast?.next;
    }
    return res.next;
  }
}

void main() {
  Solution s = Solution();
  final list1 = ListNode(1, ListNode(2, ListNode(4)));
  final list2 = ListNode(1, ListNode(3, ListNode(4)));
  print(s.mergeTwoLists(list1, list2));
}
