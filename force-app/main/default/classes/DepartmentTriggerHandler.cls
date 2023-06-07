public class DepartmentTriggerHandler {

    @future
    public static void createDefaultEmpFuture(set<id>depIds) {

        List<Employee__c>newEmployees = new List<Employee__c>();

        for (Id eacchId : depIds) {
            Employee__c e = new Employee__c(First_Name__c = 'Spapshik' , Department__c = eacchId);

            
        }
        insert newEmployees;
        
    }
    
}