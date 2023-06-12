public class TaskDeletionHandler {
    public static void deleteTask(List<Task> tasks) {
        // Get the current user's profile ID
        Id ProfileId = [SELECT ProfileId FROM User WHERE Id = :UserInfo.getUserId()].ProfileId;
        
        // Get the system administrator profile ID
        Id systemAdminProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1].Id;
        
        // Check if the user is the system administrator
        if (userProfileId != systemAdminProfileId) {
            // Add an error to each task
            for (Task task : tasks) {
                task.addError('Only the system administrator can delete tasks.');
            }
        } else {
            // Perform the task deletion
            delete tasks;
        }
    }
}
