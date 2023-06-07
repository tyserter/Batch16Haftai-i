trigger AccountTrigger on Account ( before insert, after insert, before update, after update) {


    List<account> newAccounts = Trigger.new;
    Map<id, account> newAccountsMap = Trigger.newMap;

    List<account> oldAccounts = Trigger.old;
    Map<id, account> oldAccountsMap = Trigger.oldMap;


    if (Trigger.isAfter && Trigger.isUpdate) {
        //set<id> allKeys = newAccountsMap.keySet();
        for (Id eachId : newAccountsMap.keySet()) {
            system.debug('account id is ' + eachId);
            account oldAcc = oldAccountsMap.get(eachId);
            account newAcc = newAccountsMap.get(eachId);

            system.debug('acc id: ' + eachId + ', old acc name is ' + oldAcc.Name + ', new acc name is ' + newAcc.Name);
        }

    }
}