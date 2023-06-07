 MapClass.sehirlerinSicakliklari();
 Map<String,Integer> Personel = new Map<String,Integer>();
 Personel.put('John', 33);
 Personel.put('Lisa', 25);
 Personel.put('Joseph', 40);
 Personel.put('David', 22);
 System.debug(Personel);
 System.debug(Personel.keySet());
 System.debug(Personel.values());

for (string isim : Personel.keySet()) {
    System.debug(isim);
    System.debug(Personel.get(isim));
}