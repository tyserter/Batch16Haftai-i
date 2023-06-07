trigger ContactTrigger3 on Contact (after insert, after update, after delete, after undelete) {
    // Collect Account IDs related to the Contacts being processed
    Set<Id> accountIds = new Set<Id>();
    
    if (Trigger.isInsert || Trigger.isUndelete || Trigger.isUndelete) {
        for (Contact contact : Trigger.new) {
            if (contact.AccountId != null) {
                accountIds.add(contact.AccountId);
                
            }
           
        }
    }
    
    if (Trigger.isUpdate || Trigger.isDelete) {
        for (Contact contact : Trigger.old) {
            if (contact.AccountId != null) {
            accountIds.add(contact.AccountId);
             }
         }
    }
    
    // Query and update Account records
    if (!accountIds.isEmpty()) {
        List<Account> accList = [SELECT Id, number_of_contacts__c, (SELECT Id FROM Contacts) FROM Account WHERE Id IN :accountIds];

        if (!accList.isEmpty()) {
            List<Account> updateAccList = new List<Account>();
            for (Account acc : accList) {
                Account Accnew  = new Account(Id = acc.Id, Number_of_Contacts__c = acc.Contacts.size());
                updateAccList.add(Accnew);
            }
            if (!updateAccList.isEmpty()) {
                update updateAccList;
                
            }
            
        }
        
        
        
        
    }
}
