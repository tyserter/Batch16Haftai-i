trigger TriggerOld on Account (before delete, after delete) {

if(Trigger.isBefore && Trigger.isInsert){
    system.debug('before insert trigger.old: ' + trigger.old);
    system.debug('before insert trigger.new: ' + trigger.new);
}
if(Trigger.isAfter && Trigger.isInsert){
    system.debug('after insert trigger.old: ' + trigger.old);
    system.debug('after insert trigger.new: ' + trigger.new);
}

if(Trigger.isBefore && Trigger.isUpdate){
    system.debug('before update trigger.old: ' + trigger.old);
    system.debug('before update trigger.new: ' + trigger.new);
}
if(Trigger.isAfter && Trigger.isUpdate){
    system.debug('after update trigger.old: ' + trigger.old);
    system.debug('after update trigger.new: ' + trigger.new);
}
}