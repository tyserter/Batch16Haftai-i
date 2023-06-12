 /*  3. Whenever Lead is created with LeadSource as Web then show "Rating should be Cold"
message otherwise show "Rating should be hot"*/

trigger LeadTriggerAssign on Lead (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isInsert ) {
       /* for (Lead newL : trigger.new) {
            if (newL.LeadSource == 'web') {
                System.debug('Rating should be Cold');

                
            }else {
                System.debug('Rating should be hot');
            }
            
        }*/

        triggerHandler.createLead(trigger.new);
        
    }


}