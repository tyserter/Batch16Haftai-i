public class OperationsHelper {
    /*2. Create a class named OperationsHelper. [Optional]
Now create the following methods in the class as per the given requirement:
a. Method Name – largestOutOfTwoNumbers
Description - It should have two parameters that can accept two decimal numbers and
should return the largest number.
b. Method Name – smallestOutOfThreeNumbers
Description - It should have three parameters that can accept three decimal numbers
and should return the smallest number.
    public OperationsHelper() */
    public Decimal largestOutOfTwoNumbers(Decimal number1, Decimal number2){
       Decimal largestNum ;
       if (number1 > number2){
        largestNum = number1;

       }else{
        largestNum = number2;

       }
       System.debug(largestNum);
       return largestNum;

    }

    //2. Yöntem
    // Decimal maxNum = Math.max(number1, number2);
    // System.debug(maxNum);
    
    // return maxNum;
    //}
    public Decimal smallestOutOfThreeNumbers(Decimal d1, Decimal d2, Decimal d3){
        Decimal smallestNum ;
        if(d1 > d2 && d3 > d2){
            smallestNum = d2;
        }else if(d2 > d1 && d3 > d1){
            smallestNum = d1;
        }else {
            smallestNum = d3;
        }
        System.debug(smallestNum);
        return smallestNum; 

        

    }
   

    
}