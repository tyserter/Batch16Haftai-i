List<string>colorList = new List<String>{'Red', 'Green'};
//icinde red var mi?
Boolean red = colorList.contains('Red');
system.debug(red);

system.debug(colorList);

colorList.add('Green');
colorList.add('purple');
colorList.add('yellow');
colorList.add('white');
colorList.add('black');
system.debug(colorList);

//1. soruda size ı hesaplatacagız

system.debug('sayisi : ' +colorList.size());

// son elemanı getirip buyuk harf ile yazdıracagiz

integer size1 = colorList.size();
string lastElement = colorList.get(size1 - 1);
system.debug('son element = ' + lastElement.toUpperCase());

string fourthElement = colorList.get(3);
system.debug(fourthElement.toUpperCase());

List<string>colorCodeList = new List<String>{'#ff0000', '#ffff00', '#ffffff'};
Boolean esitmi = colorCodeList.equals(colorList);
system.debug(esitmi);

List<String>birlestirilmisListe = new List<String>();
birlestirilmisListe.addAll(colorCodeList);
birlestirilmisListe.addAll(colorList);
system.debug(birlestirilmisListe);





