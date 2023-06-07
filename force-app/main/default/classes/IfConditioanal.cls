public class IfConditional {
    //kitap, fiyatı, adet 3 parametreli metot toplam ödeyecek miktarı hesaplasın. bu kitaptan .. adet aldınız. ödemeniz gereken miktar = ...
    public decimal kitapUcreti(string kitapAdi, decimal fiyat, integer adet) {
        decimal toplamOdeme = fiyat*adet;
        System.debug(kitapAdi + ' kitabindan ' + adet + ' adet aldiniz. odemeniz gereken toplam miktar = ' + toplamOdeme);
        return toplamOdeme;
    }
    /*3 integer parameter alan, bu notlarin ortalamasina gore
    0-24  => F
    25-44 => E
    45-54 => D
    55-69 => C
    70-84 => B
    85-100 => A sonuclarini dondursun..*/
    public string notOrtalamasi(integer not1, integer not2, integer not3) {
        //once not ortalamasini buluruz..
        decimal ortalama = (not1 + not2 + not3)/3;
        //sonucu icine koyacagimiz variable tanimlayalim..
        string sonuc;
        //ortalamaya gore karsilastirmalar yapalim.
        if (ortalama>0 && ortalama<=100) {
            if (ortalama<25) {
                sonuc = 'F';
            } else if (ortalama<45) {
                sonuc = 'E';
            } else if (ortalama<55) {
                sonuc = 'D';
            } else if (ortalama<70) {
                sonuc = 'C';
            } else if (ortalama<85) {
                sonuc = 'B';
            } else {
                sonuc = 'A';
            }
        } else {
            System.debug('Girilen notlarda hatali bir durum var..');
        }
        return sonuc;

    }

    /*Tas kagit makas oyununu iki parametreli sekilde metot 1. Oyuncu kazandi, 2. Oyuncu kazandi veya berabere
    durum1   durum2  durum3 durum4  durum5 durum6
    player 1  tas      tas    kagit  kagit   makas   makas
    player 2  makas    kagit  makas  tas    tas     kagit
    kazanan  player1  player2 p2      p1     p2      p1 */

    public string tasKagitMakas(string player1, string player2) {
        string kazanan;
        if ((player1 == 'tas' && player2 == 'makas')||(player1 == 'kagit' && player2 == 'tas') || (player1 == 'makas' && player2 == 'kagit') ) {
            kazanan = 'Player 1';
        } else if ((player1 == 'tas' && player2 == 'kagit') || (player1 == 'kagit' && player2 == 'makas') || (player1 == 'makas' && player2 == 'tas')) {
            kazanan = 'Player 2';
        } else if ((player1 == 'tas' && player2 == 'tas') || (player1 == 'kagit' && player2 == 'kagit') || (player1 == 'makas' && player2 == 'makas')) {
            kazanan = 'Beraberlik';
        } else {
            kazanan = 'Hatali bir parmetre girdiniz..';
        }
        return kazanan;
    }
}