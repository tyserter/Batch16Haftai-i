public class ProjectHandler {
    @future
    public static void updateProject(set<id> ProjectId) {
            List<Project__c> projectList = [select id, Total_Time_Logged__c, Completed_Tasks__c, Project_Status__c, (select id from Tasks1__r WHERE Status__c = 'Completed')
            FROM Project__c 
            WHERE Id IN :projectId];

            for (Project__c p : projectList) {
                p.Completed_Tasks__c = p.Tasks1__r.size();

                List<Task1__c> tlist = [select id, (select Time_Logged__c from TimeLogs__r) from Task1__c where Project__c =: p.id and Status__c = 'Completed'];
                decimal totalTime = 0;
                Integer totalTasks = ProjectHandler.get(Total_Tasks__c);
                Decimal totalTimeLogged = ProjectHandler.get(Total_Time_Logged__c);
                for (task1__c t : tlist) {
                    for (TimeLog__c tL : t.TimeLogs__r) {
                        totalTime += tL.Time_Logged__c;


                        
                    }
                    
                }
                p.Total_Time_Logged__c = totalTime;

                
            }
            update projectList;
        /*
        Set<id> ProjectId = new Set<Id>();
        decimal totalTime = 0;
        List<Task1__c> taskList = [SELECT Id, Status__c, Project__c, (select TimeLog__c from TimeLogs__r ) FROM Task1__c WHERE Id IN :taskIds];
        if (!taskList.isEmpty()) {
            for (Task1__c task : taskList) {
                projectId.add(task.Project__c);
                for (TimeLog__c tl : task.TimeLogs__r) {
                    totalTime += tl.TimeLog__c;
                    
                    
                }
            }
            List<Project__c> projectsUpdate = [SELECT Id, Total_Time_Logged__c, Completed_Tasks__c, Project_Status__c,
                                                (select id from Task1__r WHERE Status__c = 'Completed')
                                                FROM Project__c 
                                                WHERE Id IN :projectId];

        }*/

   
        
        
        /* Perform logic to update the total summary, such as updating a custom object
        TotalSummary__c totalSummary = [SELECT Id FROM TotalSummary__c LIMIT 1];
        totalSummary.Total_Tasks__c = totalTasks;
        totalSummary.Total_Time_Logged__c = totalTimeLogged;*/
        
        
    }
    
    


    

}

