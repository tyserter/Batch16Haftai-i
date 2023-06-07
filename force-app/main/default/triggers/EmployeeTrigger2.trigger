trigger EmployeeTrigger2 on Employee__c (before insert, after insert, before update, after update, before delete, after delete) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            for (Employee__c employee : Trigger.new) {
                if (String.isBlank(employee.Department__c)) {
                    employee.addError('Department cannot be empty');
                }
            }
        }
    }
    else {
        if (Trigger.isInsert) {
            Map<String, Integer> departmentCountMap = new Map<String, Integer>();
            
            for (Employee__c employee : Trigger.new) {
                if (departmentCountMap.containsKey(employee.Department__c)) {
                    departmentCountMap.put(employee.Department__c, departmentCountMap.get(employee.Department__c) + 1);
                }
                else {
                    departmentCountMap.put(employee.Department__c, 1);
                }
            }
            
            List<Department__c> departmentsToUpdate = new List<Department__c>();
            for (String departmentId : departmentCountMap.keySet()) {
                Department__c department = new Department__c(Id = departmentId);
                department.Employee_Count__c = departmentCountMap.get(departmentId);
                departmentsToUpdate.add(department);
            }
            
            update departmentsToUpdate;
        }
        else if (Trigger.isUpdate) {
            List<Employee__c> employeesToDelete = new List<Employee__c>();
            
            for (Employee__c employee : Trigger.new) {
                Employee__c oldEmployee = Trigger.oldMap.get(employee.Id);
                
                if (oldEmployee.is_Active__c && !employee.is_Active__c) {
                    employeesToDelete.add(employee);
                }
            }
            
            delete employeesToDelete;
        }
    }
}

   
