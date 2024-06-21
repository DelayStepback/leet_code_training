class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    if (head == null) {
      return head;
    }

    ListNode? res;
    while (head != null) {
      ListNode temp = ListNode(head.val);
      temp.next = res;
      res = temp;
      head = head.next;
    }

    return res;
  }
}

void main() {
  ListNode x = ListNode(1, ListNode(2, ListNode(3, ListNode(4))));
  final s = Solution();
  s.reverseList(x);
}
