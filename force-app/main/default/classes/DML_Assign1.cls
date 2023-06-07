public class DML_Assign1 {
    
    public void insertRecords() {
        List<Account> accList = new List<Account>();
        for(Integer i=1;i<=20;i++){
            Account acc = new Account();
            acc.Name = 'Test Account Created '+ i;
            accList.add(acc);
        }
        insert accList;
    }
    
    public void updateRecords() {
        List<Account> accList = [SELECT Id, Name FROM Account WHERE Name LIKE 'Test Account Created%'];
        for(Account acc : accList) {
            acc.Name = acc.Name + ' Updated';
        }
        update accList;
    }
}
