List<Kitaplar> kitapList = new List<Kitaplar>();
Kitaplar kitap1 = new Kitaplar();
kitap1.setKitapAdi('Safahat');
kitap1.setYazar('Mehmet Akif Ersoy');
kitap1.setFiyat(30);
kitap1.details();
System.debug(kitap1);
kitapList.add(kitap1);
System.debug('kitap list => ' + kitapList);
//System.debug('kitap adi : ' + kitap1.getKitapAdi());

Kitaplar kitap2 = new Kitaplar();
kitap2.setKitapAdi('Bu Ulke');
kitap2.setYazar('Cemil Meric');
kitap2.setFiyat(40);
kitap2.details();
System.debug(kitap2);
kitapList.add(kitap2);
System.debug('kitap list => ' + kitapList);

//Kitaplar.toplamKitap();

//Kitap listesinin her bir kitabini tek tek yazalim..
for (Kitaplar kitap : kitapList) {
    System.debug(kitap);
    System.debug(kitap.getKitapAdi());
    System.debug(kitap.getYazar());
    System.debug(kitap.getFiyat());
}