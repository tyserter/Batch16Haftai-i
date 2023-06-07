trigger ProjectTrigger on Task1__c (after Insert, after update) {

    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<Id> projectId = new Set<Id>();

        for(Task1__c t : Trigger.New) {
           Task1__c oldT = Trigger.oldMap.get(Task1__c.Id);
            if (Task1__c.Status__c == 'Completed' && oldT.Status__c != Trigger.oldMap.get(Task1__c.id).Status__c) {
                projectId.add(Task1__c.Project__c);

                
            }
            
        }
        ProjectHandler.updateProject(projectId);

        
    }


}