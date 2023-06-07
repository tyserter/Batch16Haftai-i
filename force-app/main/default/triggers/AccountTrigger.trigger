trigger AccountTrigger on Account ( before insert, after insert, before update, after update, before delete, after delete, after undelete) {
    /*if (Trigger.isBefore) {
        //insert or update
        if (Trigger.isInsert || Trigger.isUpdate) {

            AccountTriggerHandler.updateAccDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
            
        }
        //delete
        if(Trigger.isDelete){
            //validate here.
            AccountTriggerHandler.validateAccDelete(Trigger.old);
        }
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        //call handler method to update all contact's VIP field.
        AccountTriggerHandler.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if(Trigger.isAfter && Trigger.isUndelete){
        //call method to send email to user
        AccountTriggerHandler.sendAccEmail(Trigger.new);
    }
}*/
//1 Account create edildiğinde. ona bağlı 1 tane Contact otomatik olarak create edilsin. last name i contact diye isimlendirilsin.. future metot ile..
if (trigger.isInsert && trigger.isAfter) {
    List<Contact> conList = new List<Contact>();
    for (account acc : trigger.new) {
        Contact con = new Contact();
        con.LastName = 'Contact';
        con.AccountId = acc.id;
        conList.add(con);
    }
    insert conList;
}  
}