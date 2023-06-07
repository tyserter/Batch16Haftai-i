trigger AccountTrigger6 on Account ( before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }
}