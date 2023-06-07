@isTest

public  class DeleteOppBatchTest {

 @TestSetup
 static void makeData(){
    list<Opportunity> listOpp = new list<Opportunity>();
    for(integer i=0; i < 200; i++){
        Opportunity opp = new Opportunity();
        opp.name = 'name' + i;
        opp.stageName = 'Closed Lost';
        opp.closeDate = date.today();
        listOpp.add(opp);


    }
    insert listOpp;

 }
@isTest
public static void oppBatchTest(){
    Test.startTest();
DeleteOppBatch dob = new  DeleteOppBatch();
database.executeBatch(dob, 200);
test.stopTest();

list<Opportunity> allOpp = [select id from Opportunity];
    assert.areEqual(200, allOpp.size());

}

 
}