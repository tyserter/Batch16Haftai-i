trigger CaseTriggerAssignment on Case (before insert) {
    system.debug('before insert case trigger');
    //number of recrods?
    system.debug('number of records processed: ' + trigger.size);
}
/*
    if(trigger.isAfter && trigger.isInsert){
        for(case c: trigger.new){
            if(c.id !=null){
                System.debug('Case#' + c.caseNumber + ' was created with id '+ c.Id + ' on ' + c.CreatedDate );
            }
        }
}
if(trigger.isAfter && trigger.isUpdate){
    for(case newC : trigger.new){
        if(trigger.oldMap.get(newC.id).origin != newC.origin){
            
            System.debug('Case origin is changed for '+  newC.CaseNumber);

        }

    }

}
}*/