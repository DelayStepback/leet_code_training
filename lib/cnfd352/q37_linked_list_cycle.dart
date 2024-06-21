// 15:51

// не сам пришел

class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class Solution {
  bool hasCycle(ListNode? head) {

    ListNode? fast = head;
    while (fast!=null && fast.next != null){
      head = head?.next;
      fast = fast.next?.next;
      if (head == fast){
        return true;
      }
    }
    return false;
  }
}

void main() {
  final s = Solution();

  ListNode root = ListNode(5, ListNode(3, ListNode(9)));
  root.next!.next!.next = root.next!;

  print(s.hasCycle(root));
}
