trigger Payment1Trigger on Payment1__c (before insert, before update, before delete, after insert, after update,after delete, after undelete) {

    if(trigger.isAfter){
        if(trigger.isInsert){
            Payment1TriggerHandler.createPayment(trigger.new);
        }
        if (Trigger.isUpdate) {
            Payment1TriggerHandler.updatePayment(trigger.new, trigger.oldMap);
        }
        if (trigger.isDelete) {
            Payment1TriggerHandler.deletePayment(Trigger.old);

            
        }
    }
    
    }