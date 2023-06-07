public class CaseCreate implements Database.Batchable<sObject> , Database.Stateful {

    public integer count=0;

    public Database.QueryLocator start(Database.BatchableContext BC) {
        if (!test.isRunningTest()) {
            return Database.getQueryLocator([select id,ownerId from case where status != 'Closed' and lastModifiedDate < LAST_N_DAYS : 5  ]);
        } else {
            return Database.getQueryLocator([select id,ownerId from case where status != 'Closed' ]);
        }
        
    }

    public void execute(Database.BatchableContext BC, List<Case> scope) {
        list<task> taskList = new list<task>();
        for(case c : scope){
            task t = new task ();
            t.subject = 'Critical action needed.';
            t.activityDate = date.today().addDays(2);
            t.description = 'Complete Task';
            t.whatId = c.Id;
            t.ownerId = c.ownerId;
            t.status = 'In Progress';
        }
    }

    public void finish(Database.BatchableContext BC) {
        system.debug('Total count '+ count);
    }

}