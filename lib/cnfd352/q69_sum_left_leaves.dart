
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int sumOfLeftLeaves(TreeNode? root) {
    if (root == null){
        return 0;
    }

    if (isLeaf(root.left)){
        return root.left!.val + sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right);
    } else{
return sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right);
    }
  }
  
  bool isLeaf(TreeNode? leaf){
    return leaf != null && leaf.left == null && leaf.right == null;
  }
}