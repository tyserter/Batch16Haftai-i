public class StringMetotlar16 {
    /*string str='  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. ';
    String methodları kullanarak str nin değerini-->
    'Salesforce ogreneceğim ve developer olacağim' şekline çevirin.*/
    public void cumleDuzenle(){
        string cumle = '  sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM. ';
        //1.asama cumlenin sagindaki ve solundaki bosluklari alalim..
        System.debug(cumle);
        String cumle2 = cumle.trim();// 'sAlEsFoRcE oGrEnEcEğİm Ve DeVeLoPeRxYz1 oLaCaGiM.'
        System.debug(cumle2);
        //2. asamada tum cumleyi kucuk harfe cevirelim..
        string cumle3 = cumle2.toLowerCase();// salesforce ogreneceğim ve developerxyz1 olacagim.
        System.debug(cumle3);
        //3. asamada cumlenin ilk harfini buyuk yapalim..
        String cumle4 = cumle3.capitalize(); // Salesforce ogreneceğim ve developerxyz1 olacagim.
        System.debug(cumle4);
        //4. asamada xYz1 fazlaligini silelim.
        string sonCumle = cumle4.remove('xyz1'); // Salesforce ogreneceğim ve developer olacagim.
        System.debug(sonCumle);

        // son cumlenin son kelimesini 'olacagim.' alip yazdirabilir miyiz?
        string text = sonCumle.substringAfterLast(' ');
        System.debug(text);

    }

    // https://softinnovas394-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RYrrxAAD/view url nin icinden id yi cekelim..

    public void selectId(){
        // 1. 0 sayisinin index numarasini bulup o indexten itibaren 18 karakteri alabiliriz..
        string accUrl = 'https://softinnovas394-dev-ed.develop.lightning.force.com/lightning/r/Account/0013x00002RYrrxAAD/view';
        integer indexNo = accUrl.indexOf('0');
        string accId = accUrl.substring(indexNo, indexNo+18);
        System.debug(accId);
        // 2. /view i silip substringAfter metodu ile son / tan sonraki id yi alabilriz.
        string accUrl2 = accUrl.remove('/view');
        System.debug(accUrl2);
        string accId2 = accUrl2.substringAfterLast('/');
        System.debug(accId2);

        // 3. /viewi silip, kalan url in length ni hesaplayip 18 eksigi olan indexten itibaren yazdirabilirim..

        // 4. lastIndex metodu son / in index numarsini bulurum. 18 eksigi ile bu index numarsi arasindaki id yi alirim..
    }
}