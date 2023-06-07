@isTest
public class AccountsQueueableExampleTest {
    @isTest
    private static void testQueueable1 () {
        //prepare data
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 10; i++) {
            Account acc = new Account(Name = 'Test Account ' + i);
            accounts.add(acc);
        }
        insert accounts;

        Test.startTest();
        //enqueuing job
        AccountsQueueableExample aq = new AccountsQueueableExample();
        aq.listAcc = accounts;
        //enque the queueable
        system.enqueueJob(aq);
        Test.stopTest();

        //assert
        List<Account> liSstAcc = [select id, name from Account where name like '% --SI'];
        assert.areEqual(500, lisstAcc.size());

        
    }
    
}