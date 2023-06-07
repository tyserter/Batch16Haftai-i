Cicekler cicek1 = new Cicekler();
cicek1.setCicekAdi('Gul');
cicek1.setAdet(3);
//map'e eklemek icin getterlere ihtiyacim var..
string cckAd = cicek1.getCicekAdi();
integer adt = cicek1.getAdet();
Cicekler.cicekSepeti.put(cckAd, adt);
System.debug(Cicekler.cicekSepeti);

Cicekler cicek2 = new Cicekler('Lale', 5);
//string cckAd2 = cicek2.getCicekAdi();
//integer adt2 = cicek2.getAdet();
//Cicekler.cicekSepeti.put(cckAd2, adt2);
//Cicekler.cicekSepeti.put(cicek2.getCicekAdi(), cicek2.getAdet());
System.debug(Cicekler.cicekSepeti);

Cicekler.addCicek('Gul', 2);
System.debug(Cicekler.cicekSepeti);
Cicekler.addCicek('Lale', 3);
System.debug(Cicekler.cicekSepeti);