public class SchedulableTask implements Schedulable {
    public void execute(SchedulableContext Cs) {
        CaseCreate C = new CaseCreate();
        Database.executeBatch(C, 5);


    }
}