IfConditional ifc = new IfConditional();
decimal sonuc = ifc.kitapUcreti('Sefiller', 11.10, 5);
System.debug('toplam odeme = ' + sonuc);

IfConditional ifc2 = new IfConditional();
string sonuc = ifc2.notOrtalamasi(65, 55, 85);
System.debug('Dersten aldiginiz not => ' + sonuc);
string sonuc2 = ifc2.notOrtalamasi(-65, 55, -85);
System.debug('Dersten aldiginiz not => ' + sonuc2);
string sonuc3 = ifc2.notOrtalamasi(15, 05, 25);
System.debug('Dersten aldiginiz not => ' + sonuc3);
string sonuc4 = ifc2.notOrtalamasi(100, 95, 95);
System.debug('Dersten aldiginiz not => ' + sonuc4);

IfConditional ifc3 = new IfConditional();
string sonuc = ifc3.tasKagitMakas('tas', 'kagit');
System.debug('kazanan => ' + sonuc);
string sonuc2 = ifc3.tasKagitMakas('makas', 'kagit');
System.debug('kazanan => ' + sonuc2);
string sonuc3 = ifc3.tasKagitMakas('tas', 'tas');
System.debug('kazanan => ' + sonuc3);
string sonuc4 = ifc3.tasKagitMakas('tass', 'kgt');
System.debug('kazanan => ' + sonuc4);