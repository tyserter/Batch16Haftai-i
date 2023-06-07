@isTest
public class CaseHandlerTest {
    @isTest
    private static void createCaseTest () {
        //case create ediyoruz
        List<Case> newListCase = new List<Case>();
        for (Integer i = 0; i < 50; i++) {
            case c = new Case();
            c.subject = 'Parent Case may contain secret info, do something NOW' + i;
            c.Priority = 'High';
            c.status = 'Working';
            c.origin = 'Web';
            if (i < 20) {
                c.Description = 'Secret info not allowed in case password';
            }else if (i < 50) {
                c.description = 'Description';
                
            }
           
            newListCase.add(c);
            
        }
        test.startTest();
        insert newListCase;
        test.stopTest();
        List<case> newListCase2 = [SELECT id, description FROM case where ParentId !=null];
        assert.areEqual(20, newListCase2.size());
    }
}