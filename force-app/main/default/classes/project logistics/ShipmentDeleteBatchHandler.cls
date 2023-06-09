// Handler class for the batch
public class ShipmentDeleteBatchHandler implements Database.Batchable<sObject>, Database.Stateful {
    public Database.QueryLocator start(Database.BatchableContext BC) {
        // Query for shipments that are more than 2 months old and not live
        Date twoMonthsAgo = Date.today().addMonths(-2);
        return Database.getQueryLocator([
            SELECT Id, Name, Live__c
            FROM Shipment__c
            WHERE Arrival_Date_Time__c <= :twoMonthsAgo AND Live__c = false
        ]);
    }
    
    public void execute(Database.BatchableContext BC, List<Shipment__c> scope) {
        // Delete the shipment records
        delete scope;
    }
    
    public void finish(Database.BatchableContext BC) {
        // Send email to the "Daily Job" Public Group
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject('Batch Execution Completed');
        email.setPlainTextBody('The batch process has been executed successfully.');
        email.setTargetObjectId(getGroupId('Daily Job'));
        email.setSaveAsActivity(false);
        Messaging.sendEmail(new List<Messaging.Email> { email });
    }
    
    private static Id getGroupId(String groupName) {
        Group dailyJobGroup = [SELECT Id FROM Group WHERE Type = 'Regular' AND DeveloperName = :groupName LIMIT 1];
        return dailyJobGroup.Id;
    }
}
