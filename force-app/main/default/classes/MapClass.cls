public class MapClass {
//farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.
public class MapClass {
    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.
    public static void sehirlerinSicakliklari() {
        //1. asama Bir Map olusturalim. 5 sehir ve 7 gunun sicaklarini icine koyalim..
        Map<string, list<decimal>> citiesOfHot = new Map<string, list<decimal>>();
        List<decimal> istanbulOfHot = new List<decimal>{11.5, 13.7, 18.9, 22.2, 15.5, 21.3, 19.9};
        citiesOfHot.put('istanbul', istanbulOfHot);

        List<decimal> amsterdamOfHot = new List<decimal>{8.5, 3.7, 8.9, 2.2, 5.5, 2.3, 9.9};
        citiesOfHot.put('Amsterdam', amsterdamOfHot);

        List<decimal> newYorkOfHot = new List<decimal>{8.7, 3.3, 8.1, 5.2, 7.5, 4.3, 6.9};
        citiesOfHot.put('newYork', newYorkOfHot);

        List<decimal> torontoOfHot = new List<decimal>{-8.5, -3.7, 2.9, -2.2, 5.5, 2.3, 3.9};
        citiesOfHot.put('toronto', torontoOfHot);

        List<decimal> nairobiOfHot = new List<decimal>{18.5, 23.7, 18.9, 22.2, 25.5, 22.3, 29.9};
        citiesOfHot.put('nairobi', nairobiOfHot);

        System.debug(citiesOfHot);
        
        //2. asama ayri bir map olusturalim. 5 sehir ve sicaklik ortalamalarini tutsun.
        Map<string, decimal> mapOrtSicaklik = new Map<string, decimal>();
        for (string city : citiesOfHot.keySet()) {
            System.debug(city + ' = ' + citiesOfHot.get(city));
            decimal sum = 0;
            for (decimal eachDerece : citiesOfHot.get(city)) {
                sum += eachDerece;
            }
            decimal Average = sum/citiesOfHot.get(city).size();
            mapOrtSicaklik.put(city, Average.setScale(1));
        }
        System.debug('map ort sicaklik = ' + mapOrtSicaklik);

        //3. asama 2 set olusturalim derecesei 10 un alti ve ustu olan sehirlerle ilgili
        Set<string> less10 = new Set<string>();
        Set<string> more10 = new Set<string>();

        //4. asama for each ile ortalamalari karsilastir ve ilgili sete ekleyelim..
        for (string city : mapOrtSicaklik.keySet()) {
            if (mapOrtSicaklik.get(city)>10) {
                more10.add(city);
            } else {
                less10.add(city);
            }
        }

        //5. asama bu illeri yazdir..
        System.debug('Sicaklik ortalamasi 10 dan buyuk olan sehirler = ' + more10);
        System.debug('Sicaklik ortalamasi 10 ve 10 dan kucuk olan sehirler = ' + less10);
    }
   
    
}
    
}