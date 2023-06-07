trigger AccountTrigger7 on Account (before insert, before update) {
    if (Trigger.isBefore){
        for (account newAcc : trigger.new) {
            if(newAcc.Active__c =='Yes'){
                newAcc.Description = 'Account is Active';
            }
            if (newAcc.Active__c == 'No') {
                newAcc.Description = 'Account is Inactive';
                
            }
            
        }
    }  
    if (Trigger.isUpdate) {
        for (account newAcc : trigger.new) {
           if(trigger.oldMap.get(newAcc.id).Active__c != newAcc.Active__c && newAcc.Active__c == 'Yes') { 
            newAcc.Description = 'Account is Active';
           }
           if(trigger.oldMap.get(newAcc.id).Active__c != newAcc.Active__c && newAcc.Active__c == 'No') { 
            newAcc.Description = 'Account is InActive';

                
            }
            
        }

        
    }
}




