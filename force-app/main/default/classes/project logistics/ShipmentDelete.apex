// Schedule the batch to run every day at 3:00 AM
String cronExpression = '0 0 3 * * ?';
ShipmentDelete scheduler = new ShipmentDelete();
System.schedule('Shipment Purge Batch', cronExpression, scheduler);
