class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<TreeNode?> callStack = [];

  // обход в ширину
  String serialize(TreeNode? root) {
    if (root == null) {
      return '';
    }
    callStack.add(root);
    List<String?> resPrep = [];

    while (callStack.isNotEmpty) {
      TreeNode? node = callStack.removeAt(0);

      if (node == null) {
        resPrep.add(null);
        continue;
      } else {
        resPrep.add(node.val.toString());
      }
        callStack.add(node.left);
        callStack.add(node.right);
    }

    int indFirstRightNull = -1;

    for (int i = resPrep.length-1; i> 0; i --){
      if (resPrep[i] == null && resPrep[i-1] != null){
        indFirstRightNull = i;
        break;
      }
    }

    if (indFirstRightNull != -1){
      resPrep = resPrep.sublist(0, indFirstRightNull);      
    }

    return resPrep.toString();
  }

  TreeNode? deserialize(String data) {
    if (data.isEmpty) {
      return null;
    }

    List<String> list = data.substring(1, data.length - 1).split(',');
    for (int i = 0 ; i< list.length; i++){
      list[i] = list[i].trim();
    }

    TreeNode? root = TreeNode(int.parse(list[0]));

    List<TreeNode?> callStack = [root];

    for (int i = 1; i < list.length; i++) {
      TreeNode? node = callStack.removeAt(0);

      if (list[i] != 'null') {
        node!.left = TreeNode(int.parse(list[i]));
        callStack.add(node.left);
      }

      if (list[i + 1] != 'null') {
        node!.right = TreeNode(int.parse(list[i + 1]));
        callStack.add(node.right);
      }

      i++;
    }
    return root;
  }
}

void main() {
  TreeNode t = TreeNode(1, TreeNode(2), TreeNode(3, TreeNode(4), TreeNode(5)));

  print(Solution().serialize(Solution().deserialize(Solution().serialize(t))));
}
