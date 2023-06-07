trigger AccountTrigger on Account ( before insert, after insert, before update, after update) {

    if (Trigger.isAfter && Trigger.isUpdate) {  
        integer websiteChange = 0;
        
        for (Id eachId : Trigger.newMap.keySet()) {
            //how to check if website field is changed?
                //new account's website field NOT EQUAL to old account's website field
            
            Account oldAcc = Trigger.oldMap.get(eachId);
            Account newAcc = Trigger.newMap.get(eachId);

            if (oldAcc.website != newAcc.website) {
                system.debug('for account: ' + newAcc.Name + ', NEW website is ' + newAcc.website);
                websiteChange++;
            }
        }
        system.debug('website changed in ' + websiteChange + ' accounts');
    }

    if (Trigger.isBefore) {
        for (Account newAcc : Trigger.new) {
            if (Trigger.isInsert && newAcc.active__c == 'Yes') {
                //update description field
                //se new field value
                newAcc.Description ? 'Account is now active.Enjoy Buddy!';
                
            }
            
        }
    }
}
