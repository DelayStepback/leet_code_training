class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) {
      return 0;
    }

    final int leftVal = maxDepth(root.left);
    final int rightVal = maxDepth(root.right);
    if (leftVal >= rightVal) {
      return leftVal + 1;
    } else {
      return rightVal + 1;
    }
  }
}

void main() {
  Solution s = Solution();

  TreeNode root = TreeNode(3, TreeNode(9), TreeNode(20, TreeNode(20), TreeNode(7)));

  print(s.maxDepth(root));
}
