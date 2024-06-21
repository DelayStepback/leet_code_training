class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int post = 1;
    int pre = 1;
    int n = nums.length;
    List<int> result = List.filled(n, 1);

    for (int i = 0; i < n; i++) {
      result[i] = pre;
      pre = pre * nums[i];
    }

    for (int i = n - 1; i >= 0; i--) {
      result[i] = result[i] * post;
      post = post * nums[i];
    }
    return result;
  }
}

void main() {
  final s = Solution();

  print(s.productExceptSelf([1,2,3,5,10]));

}
