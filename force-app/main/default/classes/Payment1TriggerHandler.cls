public  class Payment1TriggerHandler {
    public static void newTotalAmount (set<id> customerId){
        List<Customer1__c> newCus = [SELECT id, total_amount__c,(SELECT id, Amount__c FROM Payments__r)  FROM Customer1__c where id =: customerId];
        if (!newCus.isEmpty()) {
            for (Customer1__c eachCus : newCus) {
                decimal totalAmount = 0;
                for (Payment1__c eachPay : eachCus.Payments__r) {
                    totalAmount +=  eachPay.Amount__c;

                    
                }
                eachCus.total_amount__c = totalAmount;
            }
            update newCus;
        }
    }

//Create Senaryosu icin
    public static void createPayment(list<Payment1__c> newTrigger ){
     set<id> customerId = new set<id>();
        for (Payment1__c py : newTrigger) {
            if (py.Amount__c != null && py.Customer1__c != null) {
                customerId.add(py.Customer1__c);


            }
        }
        if (!customerId.isEmpty()) {
            newTotalAmount(customerId);
        }

    }
    //update senaryosu icin
    public static void updatePayment(list<Payment1__c> newTrigger, map<id, Payment1__c> oldMapTrigger ){
        set<id> customerId = new set<id>();
        for (Payment1__c p : newTrigger) {
            Payment1__c oldP = oldMapTrigger.get(p.Id);
            if (p.Customer1__c != oldP.Customer1__c || p.Amount__c != oldP.Amount__c) {
            customerId.add(p.Customer1__c);
            customerId.add(oldP.Customer1__c);
            }
        }
        if (!customerId.isEmpty()) {
            newTotalAmount(customerId);
        }
    }
    /*Create a field in Customer object called ‘Total Amount’ - this field should be auto-updated
when payments are created/updated/deleted (NO UNDELETE SCENARIO)*/
    public static void deletePayment(list<Payment1__c> oldTrigger){
        set<id> customerId = new set<id>();
        for (payment1__c p: oldTrigger) {
            if (p.Customer1__c != null && p.Amount__c !=null) {
                customerId.add(p.Customer1__c);
                
        }

                
            }
              
            if (!customerId.isEmpty()) {
                newTotalAmount(customerId);
            }
        }
           
    }
    
