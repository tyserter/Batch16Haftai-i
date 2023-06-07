/*Create one new field in the contact object ‘Main Contact Person’ (checkbox).
When ‘Main Contact Person’ is changed to Checked in contact →Update its account’s FAX field
as that contact’s FAX Field*/

public class ContactHandler {
    public static void updateContact(List<Contact> newTrigger, Map<Id,Contact> oldMap) {
        set<Id> accId = new set<Id>();
        for (Contact con : newTrigger) {
            contact oldCon = oldMap.get(con.Id);

            if (con.Main_Contact_Person__c != oldCon.Main_Contact_Person__c) {
                accId.add(con.AccountId);
                
            }
            
        }
       List<Account> accconList = [select id, fax,(select fax from Contacts where Main_Contact_Person__c = true limit 1) from Account where Id =: accId];

       for (Account  acc : accconList) {
        acc.fax = acc.Contacts[0].fax;

        
       }
       update accconList;
        
    }
    
    

    
}