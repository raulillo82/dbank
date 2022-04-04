import Debug "mo:base/Debug";

actor DBank {
  stable var currentValue = 300;
  //currentValue := 100;

  let id = 21512352352;
  //Debug.print(debug_show(id));

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

    public func withdraw(amount: Nat) {
      let tempValue: Int = currentValue - amount;
      if (tempValue >= 0) {
        currentValue -= amount;
        Debug.print(debug_show(currentValue));
      } else {
        Debug.print("Amount too large, resulting balance less than zero, not withdrawing!");
      }
  };

  public query func checkBalance(): async Nat {
    return currentValue;    
  };

  //topUp();
}