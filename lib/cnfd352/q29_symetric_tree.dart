class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  bool isSymmetric(TreeNode? root) {
    if (root == null){
      return true;
    }
    return isMirror(root.left, root.right);
  }

  bool isMirror(TreeNode? r1, TreeNode? r2){
    if (r1 == null && r2 == null){
      return true;
    }
    if (r1 == null && r2 != null || r2 == null && r1 != null){
      return false;
    }

    bool b = (r1!.val == r2!.val);

    return b && isMirror(r1.right, r2.left) && isMirror(r1.left, r2.right);
  }
}

void main() {
  Solution s = Solution();

  // TreeNode root = TreeNode(9, TreeNode(4), TreeNode(13, TreeNode(10), TreeNode(15)));
  // TreeNode root2 = TreeNode(9, TreeNode(5), TreeNode(5, TreeNode(4), TreeNode(2)));
  // TreeNode rootSym = TreeNode(9, TreeNode(5, TreeNode(4), TreeNode(2)), TreeNode(5, TreeNode(2), TreeNode(4)));

  TreeNode rootCheck = TreeNode(1, TreeNode(2, TreeNode(3)), TreeNode(2, TreeNode(3)));


  print(s.isSymmetric(rootCheck));
}
