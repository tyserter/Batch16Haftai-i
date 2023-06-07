@isTest
public class OperationsHelperTest {
    @isTest
    public static void largestOutOfTwoNumbers(){
        OperationHelper a = new OperationHelper();
        Decimal largestA = a.largestOutOfTwoNumbers(5,9);
        Assert.areNotEqual(9,largestA);
    }
    
}