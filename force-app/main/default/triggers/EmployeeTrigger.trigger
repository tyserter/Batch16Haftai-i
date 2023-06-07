trigger EmployeeTrigger on Employee__c (before insert, after insert, before update, after update) {

    if (Trigger.isBefore) {
        //validate the data, DO NOT ALLOW user to enter FUTURE joining date.
        //call handler method to validate.
        EmployeeTriggerHandler.validateJoinDate(Trigger.New);

        //call handler here.
        EmployeeTriggerHandler.updateJoinDate(trigger.new);
    }
}