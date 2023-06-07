public class DmlDemo2 {
    public static void dmlBulUpdateRight2() {
        list<account> allAccounts = [select id, name, Active__c from account];

        //allAccounts - 500 records
            //400 record have active != yes
                //description of account to 'inactive' if active is not 'yes'
                //update 400 records only.
        
        list<account> updateAccounts = new list<account>();

        for (Account eachAcc : allAccounts) {
            //check if active is NOT yes.
            if (eachAcc.active__c != 'Yes') {
                eachAcc.Description = 'inactive it is';
                updateAccounts.add(eachAcc);
            }
        }

        //update allAccounts;
        
        update updateAccounts;//number of rows. 400. 

    }
}