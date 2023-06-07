trigger AccountTrigger8 on Account ( before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        AccountTriggerHandler2.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        //call handler method to update all contact's VIP field.
        AccountTriggerHandler2.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
}