trigger CaseTrigger on Case (before insert, after insert, before update, after update) {

    //! burası 9.Assigment 28.05.2023
    if (Trigger.isAfter && trigger.isInsert) {
           //CaseHandler.createCase(trigger.new);
           tiggerHandler.createCase(trigger.new);
    }      
   
   
   
   /*
   2. Show the message as 'Case origin is changed for [Case Number]' whenever case origin
field value is changed.
   */

   // if(trigger.isAfter && trigger.isUpdate){
   //     for(case newC : trigger.new){
   //         if(trigger.oldMap.get(newC.id).origin != newC.origin){
               
   //             System.debug('Case origin is changed for '+  newC.CaseNumber);

   //         }

   //     }

   // }
   
   
   /*
   1. Try to print this message (Case# [caseNumber] was created with id [recordId] on [createdDate].)
in all the events where Id is not null.
For example: when a case with Id as '5005j00000C7CRJAA3' and with case number as '11234'
created on 12/7/2021. then the message should be printed as –
Case# 11234 was created with id 5005j00000C7CRJAA3 on 12/7/2021.
   */
//         if(trigger.isAfter && trigger.isInsert){
//         for(case c: trigger.new){
//             if(c.id !=null){
//                 System.debug('Case#' + c.caseNumber + ' was created with id '+ c.Id + ' on ' + c.CreatedDate );
//             }
//         }
// }

   
   // System.debug('We are in the triggers');

   // if(trigger.isBefore){
   //     System.debug('We are in the before triggers');
   //     if(trigger.isInsert){
   //         System.debug('We are in the before-Insert triggers');
   //     }    if( trigger.isUpdate){
   //         System.debug('We are in the after-Update triggers');

   //     }
   // }
   // if(trigger.isAfter){
   //     System.debug('We are in the after triggers');
   //     if(trigger.isInsert){
   //         System.debug('We are in the after-Insert triggers');
   //         }
   //         if( trigger.isUpdate){
   //         System.debug('We are in the after-Update triggers');

   //     }
   // }
}