public  class triggerHandler {
    public static void createLead(list<lead> newtrigger) {
        List<Task> newLead = new List<Task>();
        string subject = CustomMain__c.getInstance().Subject__c;
        string status = CustomMain__c.getInstance().Status__c;
        string comments1 =CustomMain__c.getInstance().Comments__c;
        Boolean isLead = CustomMain__c.getInstance().Lead_Task__c;
        //Boolean isCase = CustomMain__c.getInstance().Case_Task__c;

        if (isLead) {
            for (Lead eachLead : newtrigger) {
                Task newTask = new Task();
                newTask.Subject = subject;
                newTask.Status= status;
                newTask.Description = comments1;
                newTask.ActivityDate=date.today().addDays(1);
                newTask.WhoId= eachLead.Id;
                newLead.add(newTask);

        
            }
            try {
                if (!newLead.isEmpty()) {

                insert newLead;
                }
                
            } catch (Exception e) {
                string errorHelper= e.getMessage();
                sendErrorEmail(UserInfo.getUserId(), errorHelper);
                
            }
              
        }

    }

    private static void sendErrorEmail(Id userId, string errorHelper ) {
        user userLoginId = [select email from user where id = :userId limit 1];
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        
            email.setToAddresses(new list<string> {userLoginId.Email});
            email.setSubject('Error Creating Default Tasks');
            email.setPlainTextBody(errorHelper);

            Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
        
    }
}