trigger Customer1Trigger on Customer1__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (Trigger.isAfter && Trigger.isInsert) {
        Customer1TriggerHandler.createCustomer(Trigger.new);
        
    }
    if (Trigger.isBefore && Trigger.isDelete ) {
        Customer1TriggerHandler.deletePayment(Trigger.old);
        
    }

}
