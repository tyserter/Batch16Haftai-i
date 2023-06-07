@isTest 
public class CaseCreateTest{
    @TestSetup
    static void makeData(){

        List<case> listCase = new List<case>();

        for(integer i=0; i<200; i++){

            case cs = new case();
            cs.status='New';
            cs.Origin='Phone';
            listCase.add(cs);

        }
        insert listCase;
        
    }

    @isTest
    static void caseTest(){
        test.startTest();
        CaseCreate cst = new CaseCreate();
        database.executeBatch(cst,200);
        test.stopTest();

        List<task> listTask = [select id from task];
        assert.areEqual(200,listTask.size());
    }

}