class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? lowestCommonAncestor(TreeNode? root, TreeNode? p, TreeNode? q) {
    if (root == null || p == null || q == null) {
      return null;
    }

    if (p.val > q.val){
      final temp = p;
      p = q;
      q = temp;
    }


    if ((root.right == q && root == p) || (root.left == p && root == q)) {
      return root;
    }

    if (root.val > p.val && root.val < q.val) {
      return root;
    } else if (root.val > q.val) {
      return lowestCommonAncestor(root.left, p, q);
    } else if (root.val < p.val) {
      return lowestCommonAncestor(root.right, p, q);
    }
    return null;
  }
}

void main() {
  final s = Solution();

  // final root = TreeNode(6, TreeNode(2, TreeNode(0), TreeNode(4)), TreeNode(8, TreeNode(7), TreeNode(9)));
  final root = TreeNode(3, TreeNode(1, null, TreeNode(2)), TreeNode(4));

  final res = s.lowestCommonAncestor(root, root.right, root.left)?.val;
  print(res);
}
