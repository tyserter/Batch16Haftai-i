public class SOQLDemo2 {
    public static void projectSOQL1(){
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where Status__c = 'New'];

        for (Salesforce_Project__c eachSP : sp) {
            system.debug('project name is ' + eachSP.Project_Name__c + ', its status is ' + eachSP.Status__c);
        }
    }

    public static void projectSOQL1(string status){
        //[soql ]
        list<salesforce_project__c> sp = [select id, name, project_name__c, status__c from salesforce_project__c where Status__c = :status];//binding data :

        for (Salesforce_Project__c eachSP : sp) {
            system.debug('project name is ' + eachSP.Project_Name__c + ', its status is ' + eachSP.Status__c);
        }
    }

    //Opportunities to Accounts
    public static void childToParentSOQL1() {
        list<Opportunity> listOPP = [select id, name, amount, closedate, account.annualrevenue, account.name from opportunity];
        //print opp name, opp amount, acc name, acc revenue

        for (Opportunity eachOpp : listOPP) {
            system.debug('opp name and amount is ' + eachOpp.Name + ' - ' + eachOpp.Amount);
            system.debug('acc name and its revenue is ' + eachOpp.account.Name + ' - ' + eachOpp.Account.AnnualRevenue);
            system.debug('-----');
        }
    }
   
        public static void ChildToParent() {
            List<Contact> lstcontact = [SELECT Id, Name, Account.Id, Account.Name FROM Contact];
            for(Contact c : lstcontact) {
                System.debug('Account ID: ' + c.Account.Id);
                System.debug('Account Name: ' + c.Account.Name);
            }
        }
        
        public static void ParentToChild() {
            List<Account> lstaccount = [SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account];
            for(Account a : lstaccount) {
                for(Contact c : a.Contacts) {
                    System.debug('Contact ID: ' + c.Id);
                    System.debug('Contact Name: ' + c.Name);
                }
            }
        
    }
    
   
    
    
}