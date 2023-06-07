/*When the Annual revenue value of an Account is reduced from the previous value then print the
following message:
‘Annual Revenue for an account cannot be reduced’*/

Trigger AccountTrigger on Account(before insert, after insert, before update, after update){
    if(trigger.isBefore&& trigger.isUpdate){
        for(Account newAcc:trigger.new ){
            Account oldAcc= trigger.oldMap.get(newAcc.Id);
            if(newAcc.AnnualRevenue<= oldAcc.AnnualRevenue){
                system.debug('Annual Revenue for an account cannot be reduced');
            }
        }
    }
    /*When Account’s rating field is updated to HOT, get count of opportunity in this account. If the
count of opportunity is MORE than 3 and Rating of account is updated to HOT print following...
Account is NOW HOT!And it has 4 opportunities.*/

Set<Id> AccIds = new Set<Id>();
    for (Account NewAcc : Trigger.new) {
      if (NewAcc.rating == 'Hot') {
        AccIds.add(NewAcc.id);

      }  
    }
    list<Account> newListAcc = [SELECT Id, Name, Rating, (select id from opportunities)FROM Account where Id in : AccIds];
        for (Account Acc : newListAcc ) {
            if (Acc.opportunities.size() > 3) {
              system.debug('Account is NOW HOT!And it has 4 opportunities.'); 
            }
        }
}
