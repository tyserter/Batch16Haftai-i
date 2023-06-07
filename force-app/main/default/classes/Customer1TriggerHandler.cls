public class Customer1TriggerHandler {
  /*
  a. Whenever a new Customer is created, create following default Payment records
- Amount = $0.1, Mode = Online
- Amount = $1, Mode = Crypto
  */
 public static void createCustomer(List<Customer1__c> newTrigger) {
   List<Payment1__c> paymentList = new List<Payment1__c>();

   for (Customer1__c eachCustom : newTrigger) {

       Payment1__c newPayment1 = new Payment1__c();
       newPayment1.Amount__c = 0.1;
       newPayment1.Mode__C = 'Online';
       newPayment1.Customer1__c = eachCustom.id;
       paymentList.add(newPayment1);

       Payment1__c newPayment2 = new Payment1__c();
       newPayment2.Amount__c = 1;
       newPayment2.Mode__C = 'Crypto';
       newPayment2.Customer1__c = eachCustom.id;
       paymentList.add(newPayment2);
   }
   if (!paymentList.isEmpty()) {
       insert paymentList;
       
   }
   
 }
 /*
 b. Whenever Active Customers are deleted, all the corresponding payments should be deleted.
 c. Whenever In Active Customers are deleted, all the corresponding online payment records
should be deleted.
 */
 public static void deletePayment(List<Customer1__c> oldTrigger) {
   Set<id> activeSet = new Set<id>();
   Set<id> inActiveSet = new Set<id>();
   for (Customer1__c eachCus : oldTrigger) {
       if (eachCus.Active__c == true) {
           activeSet.add(eachCus.id);

       }else {
           inActiveSet.add(eachCus.Id);
       }         
   }
   if (!activeSet.isEmpty()) {
       List<Payment1__c> payment1 = [SELECT id FROM Payment1__c where Customer1__c in : activeSet];//set ve listte in : kullanıyoruz. tek değerde in=: kullanıyoruz
       if (!payment1.isEmpty()) {
           delete payment1;
           
       }

   }
   if (!inActiveSet.isEmpty()) {
       List<Payment1__c> payment2 = [SELECT id FROM Payment1__c where Customer1__c in : inActiveSet and Mode__c = 'Online'];//set ve listte in : kullanıyoruz. tek değerde in=: kullanıyoruz
       if (!payment2.isEmpty()) {
           delete payment2;
           
       }

   }

}
}  