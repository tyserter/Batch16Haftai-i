public class CalculatorAgain {
    
    public static Integer sumOfPositiveIntegers(Integer n) {
        if (n < 0) {
            System.debug('We are not calculating the sum for negative numbers');
            return null;
        }
        Integer sum = 0;
        for (Integer i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }
    
    public static void multiplicationTable(Integer n) {
        for (Integer i = 1; i <= 10; i++) {
            System.debug(i + ' x ' + n + ' = ' + i*n);
        }
    }
    
    public static Integer sumOfSquares(Integer n) {
        Integer sum = 0;
        for (Integer i = 1; i <= n; i++) {
            sum += i*i;
        }
        System.debug('Input number: ' + n);
        System.debug('Output: The sum of squares from 1 to ' + n + ' is ' + sum);
        return sum;
    }
    
}
