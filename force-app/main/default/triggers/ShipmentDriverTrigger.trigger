trigger ShipmentDriverTrigger on Shipment_Driver__c (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            
        }
        ShipmentDriverTriggerHandler.validateShipmentDriver(Trigger.new);
        }
    }