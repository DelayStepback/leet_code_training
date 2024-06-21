class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  Map<int, List<int>> levelFill = {};
  List<List<int>> levelOrder(TreeNode? root) {
    List<List<int>> res = [];
    fillTree(root, 0);

    List<int> sortedKeys = levelFill.keys.toList();
    sortedKeys.sort();
    for (var key in sortedKeys) {
      if (levelFill[key] == null){
        continue;
      }
      final level = levelFill[key];
      res.add(level!);
    }
    return res;
  }

  void fillTree(TreeNode? root, int level) {
    if (root == null){
      return;
    }
    final copying = levelFill[level];
    levelFill[level]=  [...(copying??[]), root.val];
    fillTree(root.left, level+1);
    fillTree(root.right, level+1);
  }
}

void main() {
  Solution s = Solution();

  // TreeNode root = TreeNode(9, TreeNode(4), TreeNode(13, TreeNode(10), TreeNode(15)));
  // TreeNode root2 = TreeNode(9, TreeNode(5), TreeNode(5, TreeNode(4), TreeNode(2)));
  // TreeNode rootSym = TreeNode(9, TreeNode(5, TreeNode(4), TreeNode(2)), TreeNode(5, TreeNode(2), TreeNode(4)));

  TreeNode rootCheck = TreeNode(1, TreeNode(2, TreeNode(3)), TreeNode(2, TreeNode(3)));

  print(s.levelOrder(rootCheck));
}
