public class TaskDeleteTrigger{
    public static void checkUser(list<task> triggerOld ){
  
      Profile userProfile = [select id,name from profile where name = 'System Administrator' limit 1];
  
      for(task eachTask: triggerOld){
  
          if(userProfile.id != userInfo.getProfileId()){
              eachTask.addError('Only the system administrator can delete tasks');
          }
  
      }
  
    }
  }