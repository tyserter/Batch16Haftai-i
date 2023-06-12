@isTest
public class TaskDeleteTriggertest {

    @isTest
    static void taskDeleteTest(){
    
        Profile userProfile = [select id, name from profile where name ='Standard User' limit 1];

        User testUser = new User(
            FirstName = 'Test',
            LastName = 'User',
            ProfileId = userProfile.Id,
            Email = 'av.refiaaksoy@gmail.com',
            Alias = 'aksoy',
            UserName= 'av.refiaaksoy1234@gmail.com',
            TimeZoneSidKey='America/New_York',
            LocaleSidKey='en_US',
            EmailEncodingKey='utf-8', 
            LanguageLocaleKey='en_US'


        );

        insert testUser;

        list<task> lstTask = new list<task>();
        task tsk = new task ();
        tsk.subject = 'Open';
        tsk.ownerId = testUser.id;

        lstTask.add(tsk);
        insert lstTask;

        test.startTest();

        system.runAs(testUser){

        try{
            delete lstTask;

        }catch(DmlException de){

            assert.areEqual(0,lstTask.size());

        }
    }

        test.stopTest();



    }
   
}