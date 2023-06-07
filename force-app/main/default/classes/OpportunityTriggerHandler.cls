public class OpportunityTriggerHandler {
    public static void insertOpp(List<opportunity> newTrigger) {
        Set<Id> accId = new Set<Id>();
        for (opportunity eachop:newTrigger) {
            if (eachop.AccountId != null) {
                accId.add(eachop.AccountId);
     
            }
        }
        if (!accId.isEmpty()) {
            OpportunityTriggerHandler.updateHighestAmount(accId);    
        }
        
            
        }
        

    //Metotlar
    public static void updateHighestAmount(Set<Id> accId) {
        List<Account> accList = [select Id, Highest_Amount_Opportunity_Name__c, (select Id, Name, Amount from Opportunities WHERE Amount != NULL ORDER BY Amount Desc) FROM Account WHERE Id IN : accId];

        for (Account acc : accList) {

            if (acc.opportunities.size()>0) {
                acc.Highest_Amount_Opportunity_Name__c = acc.opportunities[0].Name;
                
            }
            update accList;
            
        }


        
        
        
        
    }
    public static void updateTargetAmount(Set<Id> accId) {
        List<Account> aList =[SELECT Id, Target_Amount__c, Target_Amount_Achieved_Opportunity_Name__c,(SELECT id, name Amount FROM Opportunities WHERE StageName = 'Closed Won' and Amount != null order by Amount DESC ) FROM Account WHERE id in : accId];
       
        for (Account eachAcc : aList) {
            //if(eachAcc.Opportunities.size()>0 && eachAcc.Opportunities[0].Amount > Target_Amount__c ){
                eachAcc.Target_Amount_Achieved_Opportunity_Name__c = eachAcc.Opportunities[0].Name;
                
                
            //}
           
        }
        update aList;
    }
    }