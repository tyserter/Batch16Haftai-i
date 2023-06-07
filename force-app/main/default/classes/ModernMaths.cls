public class ModernMaths {
    public static void printFactors(Integer num) {
        string x='';
        for (Integer i = 1; i <= num; i++) {
            integer remainder = math.mod(num, i);
            if (remainder==0) {
                x += i + ', ';
                
            }
        }
        system.debug(x);
    }
}
