public class SoqlAssignment1 {
    public static List<Employee__c> topEmployees() {
        return [SELECT Name, Salary__c FROM Employee__c ORDER BY Salary__c DESC LIMIT 5];
    }
    
    public static String mostPopulatedCountry() {
        AggregateResult[] results = [SELECT COUNT(Id),Country__c FROM Employee__c GROUP BY Country__c ORDER BY COUNT(Id) DESC LIMIT 1];
        return (String) results[0].get('Country__c');
    }
}


