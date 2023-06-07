List<Employee__c> topEmps = SoqlAssignment1.topEmployees();
System.debug('Top employees :');
for (Employee__c emp : topEmps) {
    System.debug(emp.Name + ' - ' + emp.Salary__c);
}

String mostPopulated = SoqlAssignment1.mostPopulatedCountry();
System.debug('Most populated country: ' + mostPopulated);