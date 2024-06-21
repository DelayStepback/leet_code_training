class ATM {

  ATM() {
    
  }

  List<int> bank = [0,0,0,0,0];

  Map<int,int> mapper = {0: 20, 1: 50, 2: 100, 3:200, 4: 500};
  
  void deposit(List<int> banknotesCount) {
    for (int i = 0; i< banknotesCount.length;i++){
        bank[i] += banknotesCount[i];
    }
  }
  
  List<int> withdraw(int amount) {
    List<int> preBank = [...bank];
    int total = 0;
    for (int i = preBank.length -1; i>-1;i--){
        while (preBank[i] != 0 && total + mapper[i]! < amount){
            total += mapper[i]!;
            preBank[i] -= 1;
        }
        if (total == amount){
            
            for (int i = 0; i< preBank.length; i++){
                preBank[i] = bank[i] - preBank[i];
            }
            return preBank;
            
        }
    }
    return [-1];
  }
}

/**
 * Your ATM object will be instantiated and called as such:
 * ATM obj = ATM();
 * obj.deposit(banknotesCount);
 * List<int> param2 = obj.withdraw(amount);
 */


/// 2100 / 500 = 4 