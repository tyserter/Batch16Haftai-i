@isTest
public class DmlDemo1666Test {
     private static void testDml5() {
        //1. prepare required data
        //create multiple acc records
        list<account> listAcc = new list<account>();

        for (Integer i = 0; i < 2555; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            //DO NOT WRITE DML inside LOOPS. EVER. NOT Allowed. 
            //insert ac;

            listAcc.add(ac);
        }

        insert listAcc;//2555 record. Number of dmls? 1.

       
        test.startTest();
        
        DmlDemo16Again.dmlBulkUpdateRight1();
        test.stopTest();
    }
}