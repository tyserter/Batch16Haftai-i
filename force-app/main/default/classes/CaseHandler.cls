public with sharing class CaseHandler {
    /*
    1. [Trigger you did in last week] Write Apex TEST for it.
When a case is created, check the description field of the newly created case - if the description
field contains the word 'password', then create a child case with the following field values
- subject = 'Parent Case may contain secret info, do something NOW'
- parentId = _______ (newly create case id)
- priority = 'High'
- Description = 'Secret info not allowed in case'
2. Write the Test class for the triggers and trigger handlers written for the above logic.
    */
   public static void createCase(List<case> newTrigger) {
    List<Case> caseList = new List<Case>();
    for (case eachCase : newTrigger) {
        if (eachCase.Description.contains('password')) {
            case c = new Case();
            c.subject = 'Parent Case may contain secret info, do something NOW';
            c.ParentId = eachCase.id;
            c.Priority = 'High';
            c.Description = 'Secret info not allowed in case';
            caseList.add(c);
            
        }
       
    }
    insert caseList;
   }
}