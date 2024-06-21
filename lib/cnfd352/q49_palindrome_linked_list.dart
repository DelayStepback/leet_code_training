class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
// my (normal but bad)
// class Solution {
//   bool isPalindrome(ListNode? head) {
//     List<int> list = [];
//     while (head != null) {
//       list.add(head.val);
//       head = head.next;
//     }

//     return isListPalindrome(list);
//   }

//   bool isListPalindrome(List<int> list) {
//     for (int i = 0; i < list.length / 2; i++) {
//       if (list[i] != list[list.length - 1 - i]) {
//         return false;
//       }
//     }
//     return true;
//   }
// }
// good - slow fast pointers
class Solution {
  bool isPalindrome(ListNode? head) {
    if (head == null) return true;
    
    // Find the middle of the linked list using the slow and fast pointers
    ListNode? slow = head;
    ListNode? fast = head;
    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }
    
    // Reverse the second half of the linked list
    ListNode? prev = null;
    ListNode? current = slow;
    while (current != null) {
      ListNode? nextNode = current.next;
      current.next = prev;
      prev = current;
      current = nextNode;
    }
    
    // Compare the first half with the reversed second half
    ListNode? firstHalf = head;
    ListNode? secondHalf = prev;
    while (secondHalf != null) {
      if (firstHalf!.val != secondHalf.val) {
        return false;
      }
      firstHalf = firstHalf.next;
      secondHalf = secondHalf.next;
    }
    
    return true;
  }
}