public class EmployeeTriggerHandler2 {
    public static void checkDept(List<Employee__c> empTriggerNew) {
        if (trigger.isInsert) {
            
        }
        

        for (Employee__c emp : empTriggerNew) {
            if (String.isBlank(emp.Department__c)) {
                emp.addError('Department cannot be empty');
            }
        }
    }

    public static void addEmp(List<Employee__c> empTriggerNew, List<Employee__c> empTriggerOld, Map<Id,Employee__c> empTriggerNewMap, Map<Id,Employee__c> ampTriggerOldMap) {
        Map<String, Integer> departmentCountMap = new Map<String, Integer>();
        Set<Id> deptIds = new Set<Id>();

        for (Employee__c eachEmp : empTriggerNew) {
            deptIds.add(eachEmp.Department__c);
           
        }

        List<Department__c> updateDepts = [select Id, (select Id from Employees__r) from Department__c where Id in : deptIds];

        for (Department__c eachDept : updateDepts) {
            eachDept.Employee_count__c = eachDept.Employees__r.size();
            
        }

        update updateDepts;

        

        
    }

    public static void deleteInactiveEmp(List<Employee__c> empTriggerNew, List<Employee__c> empTriggerOld, Map<Id,Employee__c> empTriggerNewMap, Map<Id,Employee__c> ampTriggerOldMap) {
        Set<Id> inactiveEmp = new Set<Id>();

        for (Employee__c eachEmp : empTriggerNew) {

            if (eachemp.is_Active__c == false) {
                inactiveEmp.add(eachEmp.id);
            }
        }
        List<Employee__c> delInactiveEmp = [select id from employee__c where id in : inactiveEmp];
        delete delInactiveEmp;
    }

    
}
