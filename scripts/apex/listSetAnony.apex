//sehirlerin oldugu bir liste yapalim..
List<String> sehirler = new List<String>{'Istanbul', 'New York', 'Berlin', 'Amsterdam', 'London', 'New York'};
System.debug('sehirler listesi = ' + sehirler);

//ulkelerin oldugu bir set yapalim..
Set<String> ulkeler = new Set<String>{'Turkey', 'USA', 'Canada', 'Turkey', 'Germany', 'Nederland'};
System.debug('ulkeler listesi = ' + ulkeler);

Set<String> setSehirler = new Set<String>();
setSehirler.addAll(sehirler);
System.debug('set sehirler list = ' + setSehirler);

//ogrenci numaralarini key isimlerini value olarak alan bir map olusturalim..
//11='John', 16='Jane', 22='Ayse', 33='Mucahit', 35 = 'Nesibe', 16='Marry', 44='John' 
Map<integer, string> mapOgrenci = new Map<integer, string>();
mapOgrenci.put(11, 'John');
mapOgrenci.put(16, 'Jane');
mapOgrenci.put(22, 'Ayse');
mapOgrenci.put(33, 'Mucahit');
mapOgrenci.put(35, 'Nesibe');
mapOgrenci.put(16, 'Marry');
mapOgrenci.put(44, 'John');
System.debug('map ogrenci = ' + mapOgrenci);
Set<Integer> ogrenciNo = new Set<Integer>();
mapOgrenci.keySet();
system.debug('ogrenci nu = '+ogrenciNo);

List<string>isimList = new List<string>();
isimList = mapOgrenci.values();
system.debug('ogrenci isimleri = ' + isimList);