public  class OperationsHelper2 {
    /*
    2. List – Iteration
a. We want to do some calculations by passing a List of decimal as parameters.
Create four different methods in the OperationsHelper class to do the following:
i. Sum
ii. Average
iii. Highest
iv. Lowest
Every method must have an input parameter of type List of decimal.
If the provided list is empty, then show a message like “Please provide values to do
the operation” and return null otherwise return the calculated value.
    */

    public static decimal sumOfList(list <Decimal> s){
        Decimal sum;
        if (!s.isEmpty()) {
            sum = 0;
            for (decimal sEach : s) {
                sum = sum + sEach;
            }   
            }else {
                System.debug('Please provide values to do the operation');

                
            }
            return sum;

        }
    public static decimal averageOfList(List <Decimal> av) {
        Decimal average;
        if (!av.isEmpty()) {
            Decimal sum = sumOfList(av);
            Integer size = av.size();
            average = sum/size;
            
        }else {
            System.debug('Please provide values to do the operation');
        }
        return average;    
        
    }
    public static decimal highiestOfList(List <Decimal> high) {
        Decimal highest;
        if (!high.isEmpty()) {
            highest = high[0];//indeks 0'dan başlayarak diğer indexlerdeki sayılarla karşılaştırma yapıp en büyüğü alıyor.
            for (decimal eachHigh : high) {
                if (eachHigh > highest ) {
                    highest = eachHigh;
                } 
                
            }           
            
        }else {
            System.debug('Please provide values to do the operation');

        }
        return highest;
    }

    public static decimal lowestOfList(List <Decimal> low) {
        Decimal lowest;
        if (!low.isEmpty()) {
            lowest =low[0];
            for (decimal eachLow : low) {
                if (eachLow < lowest) {
                    lowest= eachLow;
                    
                }
                
            }
            
        }else {
            System.debug('Please provide values to do the operation');

        }
        return lowest;
    }


} 
