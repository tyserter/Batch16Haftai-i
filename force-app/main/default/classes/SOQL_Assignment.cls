public class SOQL_Assignment {
    
    public static void soql_WhereClause() {
        List<Contact> lstcontact = [SELECT Id, Name FROM Contact WHERE Name LIKE 'A%'];
        System.debug('Number of contacts with names starting with A: ' + lstcontact.size());
    }
    
    public static void soql_FromMethod() {
        List<Contact> lstcontact = [SELECT LastName, Phone FROM Contact WHERE LastName != null];
        for (Contact c : lstcontact) {
            System.debug('Last Name: ' + c.LastName + ', Phone Number: ' + c.Phone);
        }
    }
    
}
