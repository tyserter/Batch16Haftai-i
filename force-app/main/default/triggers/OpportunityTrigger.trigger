trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update, after delete) {
   //soru : Bir opportunity nin Amount update edildiğinde, amount olan bir opportunity create edildiginde veya amount olan bir opportunity record silindiginde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountun Description kısmına yazılsın.
   if (trigger.isAfter) {
      // 1. asama insert durumu
      if (trigger.isInsert) {
          //OpportunityTriggerHandler.insertMetot(trigger.new);
          OppTriggerHandler.insertMetot(trigger.new);
      }
      // 2. asama update durumu
      if (trigger.isUpdate) {
          //OpportunityTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
          OppTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
      }
      // 3 asama delete durumu
      if (trigger.isDelete) {
          //OpportunityTriggerHandler.deleteMetot(trigger.old);
          OppTriggerHandler.deleteMetot(trigger.old);
      }
   }
   
   
  }