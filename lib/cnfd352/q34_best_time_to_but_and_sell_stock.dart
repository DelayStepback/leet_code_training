class Solution {
  int maxProfit(List<int> prices) {
    int indMin = 0;
    int indMax = 0;

    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] > prices[indMax]) {
        indMax = i;
        if (prices[indMax] - prices[indMin] > maxProfit) {
          maxProfit = prices[indMax] - prices[indMin];
        }
      }
      if (prices[i] < prices[indMin]) {
        if (prices[indMax] - prices[indMin] > maxProfit) {
          maxProfit = prices[indMax] - prices[indMin];
        }
        indMin = i;
        indMax = i;
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution s = Solution();

  // List<int> prices = [7, 1, 5, 3, 6, 4]; // 5

  List<int> prices2 = [7, 6, 4, 3, 1];
  print(s.maxProfit(prices2));
}
