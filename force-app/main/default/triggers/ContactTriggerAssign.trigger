trigger ContactTriggerAssign on Contact (before insert, after insert, before update, after update) {
    //Question 4 - Whenever Contact is created with 'Account' then print '[Contact Name] contact created WITH Account'. If contact is created without 'Account' then print '[Contact Name] contact create WITHOUT Account'
      if (trigger.isAfter && trigger.isInsert) {
          for (contact NewC : trigger.new) {
              if (NewC.accountId != null) {
                  System.debug(Contact.lastName +' contact created WITH Account');
              }else {
                  System.debug(Contact.lastName +' contact created WITHOUT Account');
              }
          }
      }
  }