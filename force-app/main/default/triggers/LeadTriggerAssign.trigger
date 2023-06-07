trigger LeadTriggerAssign on Lead (before insert, after insert, before update, after update) {
    if (trigger.isInsert && trigger.isAfter ) {
        for (Lead newL : trigger.new) {
            if (newL.LeadSource == 'web') {
                System.debug('Rating should be Cold');

                
            }else {
                System.debug('Rating should be hot');
            }
            
        }
        
    }


}