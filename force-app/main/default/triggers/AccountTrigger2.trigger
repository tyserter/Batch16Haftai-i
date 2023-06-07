trigger AccountTrigger2 on Account (before update, after update) {

    if (trigger.isBefore) {
        System.debug('before update acc trigger');
    }
    
    if (trigger.isAfter) {
        System.debug('after update acc trigger');
        
    }



    

}