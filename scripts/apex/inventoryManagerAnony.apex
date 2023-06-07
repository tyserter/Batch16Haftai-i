InventoryManager p1 = new InventoryManager();
InventoryManager p2 = new InventoryManager();
InventoryManager p3 = new InventoryManager('Product 1', 'P1');
InventoryManager p4 = new InventoryManager('Product 2', 'P2');
InventoryManager p5 = new InventoryManager('Product 3', 'P3');

p1.setCostPrice(100);
p1.setSellingPrice(150);
p1.productDisplay();

p2.setCostPrice(200);
p2.setSellingPrice(250);
p2.productDisplay();

p3.setCostPrice(300);
p3.setSellingPrice(400);
p3.productDisplay();

p4.setCostPrice(400);
p4.setSellingPrice(500);
p4.productDisplay();

system.debug('total products created: ' + InventoryManager.productCount);