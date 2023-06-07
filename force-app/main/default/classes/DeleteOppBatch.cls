/*Write a Batch class to delete all the opportunities with a stage name as Closed Lost. Print the
total number of records deleted by batch apex*/

public class DeleteOppBatch implements Database.Batchable<sObject>, Database.Stateful{
    public Integer count = 0;


    

    public Database.QueryLocator start(Database.BatchableContext BC) {
        Database.QueryLocator Query = Database.getQueryLocator([select id from Opportunity where StageName = 'Closed Lost']);
        return Query;
        //2. yontem
        //string Query = 'select id from Opportunity where StageName = \'Closed Lost\'';
        //return Database.getQueryLocator(Query);

    }

    public void execute(Database.BatchableContext BC, List<Opportunity> scope) {
        if (scope != null) {
            count += scope.size();
            delete scope;

            
        }
        
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('Total records deleted ' + count);
    }

}
