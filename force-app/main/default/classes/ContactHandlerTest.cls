@isTest
public class ContactHandlerTest {
    @TestSetup
    
    public static void testSetup() {
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 20; i++) {
            account acc = new account();
            acc.Name = 'Test' + i;
            acc.fax = '999888777';
            accList.add(acc);

            
        }
        insert accList;
        List<Contact> conList = new List<Contact>();
        for (Account a : accList) {
            for (Integer i = 0; i < 5; i++) {
                contact con = new contact();
                con.accountId = a.Id;
                con.LastName = 'Deneme' + i;
                conList.add(con);

            
            }
            

            
        }
        insert conList;
        

        
    }
    @isTest
    
    private static void updateContactTest() {
        List<Contact> conList = [ select id, Name, Main_Contact_Person__c, Fax, accountId from Contact];
        conList[0].Main_Contact_Person__c = true;
            update conList;
            
        
        Account accList = [select Fax from Account where id =: conList[0].accountId limit 1];
        string cfax = conList[0].Fax;
        assert.areEqual(cfax, accList.Fax);

    

        
    }
    

    
}