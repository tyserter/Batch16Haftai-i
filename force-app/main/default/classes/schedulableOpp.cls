public class schedulableOpp implements Schedulable {

    public void execute (SchedulableContext SC){
        DeleteOppBatch scOpp = new DeleteOppBatch();
        Database.executeBatch(scOpp, 5);
    }

    
}