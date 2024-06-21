class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isValidBST(TreeNode? root) {
    return validWithLimits(root, null, null);
  }

  bool validWithLimits(TreeNode? root, int? lower, int? higher) {
    if (root == null) {
      return true;
    }
    if (root.left == null && root.right == null) {
      return checkLimits(root.val, lower, higher);
    }
    if (root.left == null && root.right != null) {
      return checkLimits(root.val, lower, higher) && validWithLimits(root.right, root.val, higher);
    }
    if (root.right == null && root.left != null) {
      return checkLimits(root.val, lower, higher) && validWithLimits(root.left, lower, root.val);
    }

    return checkLimits(root.val, lower, higher) && validWithLimits(root.right, root.val, higher) && validWithLimits(root.left, lower, root.val);
  }

  bool checkLimits(int nodeVal, int? lower, int? higher) {
    bool b = true;
    if ((lower != null && nodeVal <= lower)) {
      b = false;
    }
    if ((higher != null && nodeVal >= higher)) {
      b = false;
    }
    return b;
  }
}

/*
Идея: идем рекурсивно и есть два порога
нижний и верхний уровень
если идем в левую ветку, то верхний уменьшится
если идем в правую(где все больше), то нижний может подняться
*/

void main() {
  Solution s = Solution();
  // TreeNode root = TreeNode(5, TreeNode(4), TreeNode(6, TreeNode(3), TreeNode(7)));

  TreeNode root = TreeNode(9, TreeNode(4), TreeNode(13, TreeNode(10), TreeNode(15)));

  print(s.isValidBST(root));
}

