import 'dart:collection';

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  Queue queue = Queue();
  List<List<int>> zigzagLevelOrder(TreeNode? root) {
    List<List<int>> res = [];
    if (root == null) return res;
    
    queue.add(root);
    while (queue.isNotEmpty) {
      List<int> levelCurr = [];
      int len = queue.length;
      for (int i = 0; i < len; i++) {
        final q = queue.removeFirst();
        levelCurr.add(q.val);
        if (q.left != null){
          queue.add(q.left);
        }
        if (q.right != null){
          queue.add(q.right);
        }
      }

      if (res.length % 2 == 0){
        levelCurr = levelCurr.reversed.toList();
      }

      res.add(levelCurr);
    }
    return res;
  }
}

void main() {
  Solution s = Solution();
  // TreeNode root = TreeNode(9, TreeNode(4), TreeNode(13, TreeNode(10), TreeNode(15)));
  // TreeNode root2 = TreeNode(9, TreeNode(5), TreeNode(5, TreeNode(4), TreeNode(2)));
  // TreeNode rootSym = TreeNode(9, TreeNode(5, TreeNode(4), TreeNode(2)), TreeNode(5, TreeNode(2), TreeNode(4)));

  // TreeNode rootCheck = TreeNode(
  //     1,
  //     TreeNode(2, TreeNode(4, TreeNode(8), TreeNode(9)), TreeNode(5, TreeNode(10), TreeNode(11))),
  //     TreeNode(3, TreeNode(6, TreeNode(12), TreeNode(13)), TreeNode(7)));
  TreeNode rootCheck = TreeNode(
      3,
      TreeNode(9,),
      TreeNode(20, TreeNode(15), TreeNode(7)));
  print(s.zigzagLevelOrder(rootCheck));
}
