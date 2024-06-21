/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode res = ListNode(-1);
    ListNode? linkToLastRes = res;

    // отсеиваем очевидные случаи
    if (l1 == null && l2 == null) {
      return null;
    } else if (l1 == null) {
      return l2;
    } else if (l2 == null) {
      return l1;
    }

    ListNode? _l1 = l1;
    ListNode? _l2 = l2;
    //
    int mem = 0;
    while (_l1 != null || _l2 != null || mem != 0) {
      int counter = 0;
      int promResVal = 0;
      if (_l1 == null && _l2 == null) {
        linkToLastRes?.next = ListNode(mem);
        linkToLastRes = linkToLastRes?.next;
        mem = 0;
        continue;
      }
      if (_l1 == null) {
        counter = _l2!.val + mem;
      } else if (_l2 == null) {
        counter = _l1.val + mem;
      } else {
        // both not null
        counter = _l1.val + _l2.val + mem;
      }

      mem = 0;
      if (counter > 9) {
        mem += 1; // for next iter
        promResVal = counter % 10;
      } else {
        promResVal = counter;
      }
      _l1 = _l1?.next;
      _l2 = _l2?.next;

      linkToLastRes?.next = ListNode(promResVal);
      linkToLastRes = linkToLastRes?.next;
    }
    return res.next;
  }
}

void main() {
  Solution s = Solution();

  ListNode l1 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))));
  ListNode l2 = ListNode(9, ListNode(9));
                     //  8          9         0          0           1
  ListNode? res = s.addTwoNumbers(l1, l2);
  for (int i = 0; i < 5; i++) {
    print(res?.val);
    res = res?.next;
  }
}
