@isTest
public class DmlDemo16Test {
    @isTest
   private static void testDml1() {
        //call method
        DmlDemo16.dmlInsert1(); 
            //IT does not create any record in org.
                //it creates record in its own testing world.
        //validate by checking if record is created.
        list<account> acc = [select id, name from account];
        Assert.areEqual('Salesforce', acc[0].Name);
        Assert.areEqual(1, acc.size());
   }
   @isTest
   private static void testDML2() {
        //call method
        DmlDemo16.dmlInsert2(); 

        //assert
        List<department__c> listdep = [SELECT Name__c,Short_Code__c from department__c];
        //1 record. We can fetch records from THIS test method only. (NOT FROM ORG)
        Assert.areEqual(1, listDep.size());
        Assert.areEqual('Human Resource', listDep[0].name__c);
        Assert.areNotEqual('IT', listDep[0].Name__c); //it will pass the test only if expected is not equal to acctual.
   }
   @isTest
   private static void testDML3(){
    //we do have records, so first prepare data
    //1,prepare data
    Account a = new account(name = 'test acc');
    insert a;
    //call the method
    DmlDemo16.dmlUpdate2();
    //3, assert
    //verify what we are doing in our method
    //verify that acc name is 'salesforce Inc.
    //how
    //soql
    account acc = [select id, name from account order by CreatedDate desc limit 1];
    Assert.areEqual('Salesforce Inc.', acc.Name);

    
   }
   @isTest
   private static void testDML4() {
    Department__c d = new Department__c();

    d.Name__c = 'Human Resource';
    d.Short_Code__c = 'HR';

    insert d;

    DmlDemo16.employeeDepartment();
    employee__c emp = [select id, first_name__c, last_name__c, department__c from Employee__c where department__c = :d.id];
    assert.areEqual('Don', emp.First_Name__c);
    
   }
   
}