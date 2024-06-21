class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSameTree(TreeNode? p, TreeNode? q) {

    if (p == null && q == null){
      return true;
    } else if (p == null && q != null){
      return false;
    } else if (q == null && p != null){
      return false;
    }

    return (p!.val == q!.val) && isSameTree(p.left, q.left) && isSameTree(p.right, q.right);
  }
}

void main() {
  Solution s = Solution();
  // TreeNode root = TreeNode(5, TreeNode(4), TreeNode(6, TreeNode(3), TreeNode(7)));

  TreeNode root = TreeNode(9, TreeNode(4), TreeNode(13, TreeNode(10), TreeNode(15)));
  TreeNode root2 = TreeNode(9, TreeNode(5), TreeNode(13, TreeNode(10), TreeNode(15)));

  print(s.isSameTree(root, root2));
}
