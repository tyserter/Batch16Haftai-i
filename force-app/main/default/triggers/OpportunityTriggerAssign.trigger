/*5 When an opportunity is created show a debug message ([OpportunityName] –
[CloseDate] – [Amount]) for each opportunity and print the total number of
opportunities created in the transaction. For example: Demo Opportunity – 20/10/2022
– 40000*/

trigger OpportunityTriggerAssign on Opportunity (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isInsert) {
        System.debug('Total # of opp: ' + trigger.new.size()  );
        for (Opportunity newopp : trigger.new) {

            System.debug('total number of opportunities created in the transaction ' + newopp.Name + '-- ' + newopp.CloseDate + '---' + newopp.Amount );
        
        

        
    
     /* 6. When opportunity is created print the StageName, value of description field and
              opportunity name.*/

              System.debug('stage name is = ;'+newOpp.StageName+' '+ 'description is = '+newOpp.Description+'opportunity name is  '+newOpp.Name);
            
        }
    }
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
        if (oldOpp.StageName != opp.StageName) {
            System.debug('description: '+opp.Description+ ' opportunity name: '+opp.Name);
        }

}

    



