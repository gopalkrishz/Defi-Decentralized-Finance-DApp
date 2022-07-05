import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float"

actor DBank{
   stable var currentValue: Float =100;
  currentValue:=300;
   Debug.print(debug_show(currentValue));
  stable var startTime =Time.now();
  startTime:= Time.now();
  Debug.print(debug_show(startTime));
  
  
  
  public func topUp(amt:Float){
    currentValue+=amt;
    Debug.print(debug_show(currentValue))
  };
  public func withdraw(amt:Float){
    let temp:Float = currentValue-amt;
    if(temp>=0){
    currentValue-=amt;
    Debug.print(debug_show(currentValue))
    }else{
      Debug.print("withdraw not possible")
    }
  };
  public query func currentBalence():async Float{
    return currentValue;
  };

  public func compound(){
    var currentTime =Time.now();
    let timeElaspsedNS = currentTime - startTime;
    let timeElaspsedS = timeElaspsedNS/1000000000;
    currentValue:=currentValue *(1.01 ** Float.fromInt(timeElaspsedS));
    startTime:= currentTime
  };
  }
