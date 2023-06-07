trigger taskTrigger on Task1__c (after insert, after update) {
    Set<Id> projectIds = new Set<Id>();

    // Collect the IDs of the related Project__c records
    for (Task1__c t : Trigger.new) {
        if (t.Status__c == 'Completed') {
            projectIds.add(t.Project__c);
        }
    }

    // Invoke the future method to update the related Project__c records
    if (!projectIds.isEmpty()) {
        ProjectHandler.updateProject(projectIds);
    }

    // Update total tasks count and total time logged
    Integer totalTasks = ProjectHandler.get(Total_Tasks__c);
    Decimal totalTimeLogged = ProjectHandler.get(Total_Time_Logged__c);
    
    // Update the totals on a specific record or perform any other required logic
    // For example, you can update a custom object that holds the total values
    TotalSummary__c totalSummary = TotalSummary__c.getInstance();
    totalSummary.Total_Tasks__c = totalTasks;
    totalSummary.Total_Time_Logged__c = totalTimeLogged;
    update totalSummary;
}

