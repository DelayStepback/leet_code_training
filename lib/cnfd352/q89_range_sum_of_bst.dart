/*
Given the root node of a binary search tree and two integers low and high, 
return the sum of values of all nodes with a value in the inclusive range [low, high].
*/

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int rangeSumBST(TreeNode? root, int low, int high) {
    if (root == null) {
      return 0;
    }
    int val = 0;
    if (root.val <= high && low <= root.val) {
      val = root.val;
    }
    return val + rangeSumBST(root.left, low, high) + rangeSumBST(root.right, low, high);
  }
}

void main() {
  print(Solution().rangeSumBST(TreeNode(10, TreeNode(5, TreeNode(3), TreeNode(7)), TreeNode(15, null, TreeNode(18))), 7, 15));
}