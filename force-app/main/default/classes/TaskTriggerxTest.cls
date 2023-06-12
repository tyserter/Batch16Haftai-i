@IsTest
public class TaskTriggerTest {
    @IsTest
    static void testDeleteTaskAsSystemAdmin() {
        // Create a system administrator user
        Profile systemAdminProfile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
        User systemAdminUser = new User(
            ProfileId = systemAdminProfile.Id,
            Username = 'admin@example.com',
            Email = 'admin@example.com',
            LastName = 'Admin',
            FirstName = 'System'
        );
        insert systemAdminUser;
        
        // Create a test task
        Task testTask = new Task(
            Subject = 'Test Task',
            Status = 'Open'
        );
        insert testTask;
        
        // Delete the task as the system administrator
        System.runAs(systemAdminUser) {
            Test.startTest();
            delete testTask;
            Test.stopTest();
        }
        
        // Verify that the task was deleted
        System.assertEquals(0, [SELECT COUNT() FROM Task WHERE Id = :testTask.Id]);
    }
    
    @IsTest
    static void testDeleteTaskAsNonSystemAdmin() {
        // Create a non-system administrator user
        Profile nonAdminProfile = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1];
        User nonAdminUser = new User(
            ProfileId = nonAdminProfile.Id,
            Username = 'user@example.com',
            Email = 'user@example.com',
            LastName = 'User',
            FirstName = 'Standard'
        );
        insert nonAdminUser;
        
        // Create a test task
        Task testTask = new Task(
            Subject = 'Test Task',
            Status = 'Open'
        );
        insert testTask;
        
        // Try to delete the task as a non-system administrator
        System.runAs(nonAdminUser) {
            Test.startTest();
            try {
                delete testTask;
                // The delete operation should throw an exception, so the following assertion should fail
                System.assert(false, 'Expected exception to be thrown');
            } catch (Exception e) {
                // Verify that the correct exception was thrown
                System.assertEquals('Only the system administrator can delete tasks.', e.getMessage);
            }
        }
    }
}
