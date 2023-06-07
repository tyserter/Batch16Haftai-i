trigger DeleteTrigger on Account (before delete, after delete) {

    if (trigger.isBefore) {
        System.debug('before delete acc trigger' + trigger.new);
    }
    
    if (trigger.isAfter) {
        System.debug('after delete acc trigger' + trigger.new);
        
    }



    

}