/*Write an Queueable apex class which should create a simple case record. Call the Queueable class in
Anonymous apex and print the Job ID.
*/
public class CreateCaseQueueable implements Queueable {
    public static List<Case> caseList = [select id, name from Case];
    public void execute(QueueableContext context) {
        System.debug('Queueable calisti')
        Case newCase = new Case(
            Subject = 'Test Case',
            Description = 'This is a test case',
            Status = 'New'
        );
        insert newCase;
    }
}
