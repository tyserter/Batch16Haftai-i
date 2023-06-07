trigger LeadTrigger on Lead (before insert, before update) {
    List<Lead> leads = trigger.new;
    if (Trigger.isBefore && trigger.isInsert) {
        System.debug('before insert trigger.new : ' + trigger.new);
        System.debug('before insert trigger.new size :' + trigger.new.size());
            for (Lead eachLead : leads) {
                System.debug('before insert Newly created Lead: ' + eachlead);
                System.debug('before insert Newly created name : ' + eachlead.LastName);
                System.debug('before insert Newly created company : ' + eachlead.Company);
            }
        }
        if (trigger.isBefore && trigger.isUpdate ) {
            for (Lead eachLead : leads) {
                System.debug('updated lead name : ' + eachLead.LastName);
                System.debug('updated lead Id : ' + eachLead.id);
                System.debug('updated lead company : ' + eachLead.Company);
                System.debug('updated lead description is : ' + eachLead.Description);
                
            }
        }
    }

