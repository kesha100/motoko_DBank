import Debug "mo:base/Debug";
import Text "mo:base/Text";
actor DBank{
  stable var currentBalance = 3000;


  public query func checkBalance() : async Nat {
    return currentBalance;
  };
  // public func deposit(amount: Nat) {
  //   currentBalance += amount;
  //   Debug.print(debug_show("You have deposited"));
  // };
  public query func greet(name: Text): async Text {
    return "Hello " # name # ", welcome to DBank!";
  };

  public func transaction(amount: Nat, action: Text) {
    if (action == "deposit") {
      currentBalance += amount;
      Debug.print(debug_show("Your amount successfully's been deposited"));
    };
    if (action == "withdraw") {
      if (amount <= currentBalance){
        currentBalance -= amount;
        Debug.print(debug_show("Your amount successfully's been withdrawn"));
      } else {
        Debug.print(debug_show("Amount for withdrawl is higher than your Balance.")); 
      };
    };
    if (action == "") {
      Debug.print(debug_show("Type the transation!"));
    };

    };

  };

