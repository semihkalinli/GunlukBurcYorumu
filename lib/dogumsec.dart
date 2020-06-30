import 'burc.dart';

//BurcIslem fonksiyonu ile gelen ay ve günden burc bilgileri bulunuyor
class BurcIslem {
  List<Burc> dogumbul(int gun, int ay) {
    List<Burc> liste = [];
    if ((ay == 12 && gun >= 22) || (ay == 1 && gun <= 21)) {
      liste = [
        Burc(a: 'Oğlak \n 22 Aralık-21 Ocak', b: 'oglak.png', c: 'oglak')
      ];
      return liste;
    }
    if ((ay == 9 && gun >= 23) || (ay == 10 && gun <= 22)) {
      liste = [
        Burc(a: 'Terazi \n 23 Eylül-22 Ekim', b: 'terazi.png', c: 'terazi')
      ];
      return liste;
    }
    if ((ay == 1 && gun >= 22) || (ay == 2 && gun <= 19)) {
      liste = [Burc(a: 'Kova\n 22 Ocak-19 Şubat', b: 'kova.png', c: 'kova')];
      return liste;
    }
    if ((ay == 2 && gun >= 20) || (ay == 3 && gun <= 20)) {
      liste = [Burc(a: 'Balık\n 20 Şubat-20 Mart', b: 'balik.png', c: 'balik')];
      return liste;
    }
    if ((ay == 3 && gun >= 21) || (ay == 4 && gun <= 20)) {
      liste = [Burc(a: 'Koç\n 21 Mart-20 Nisan', b: 'koc.png', c: 'koc')];
      return liste;
    }
    if ((ay == 4 && gun >= 21) || (ay == 5 && gun <= 21)) {
      liste = [Burc(a: 'Boğa\n21 Nisan-21 Mayıs', b: 'boga.png', c: 'boga')];
      return liste;
    }
    if ((ay == 5 && gun >= 22) || (ay == 6 && gun <= 22)) {
      liste = [
        Burc(a: 'İkizler\n22 Mayıs-22 Haziran', b: 'ikizler.png', c: 'ikizler')
      ];
      return liste;
    }
    if ((ay == 6 && gun >= 23) || (ay == 7 && gun <= 22)) {
      liste = [
        Burc(a: 'Yengeç\n23 Haziran-22 Temmuz', b: 'yengec.png', c: 'yengec')
      ];
      return liste;
    }
    if ((ay == 7 && gun >= 23) || (ay == 8 && gun <= 22)) {
      liste = [
        Burc(a: 'Aslan\n23 Temmuz-22 Ağustos', b: 'aslan.png', c: 'aslan')
      ];
      return liste;
    }
    if ((ay == 8 && gun >= 23) || (ay == 9 && gun <= 22)) {
      liste = [
        Burc(a: 'Başak\n23 Ağustos-22 Eylül', b: 'basak.png', c: 'basak')
      ];
      return liste;
    }
    if ((ay == 10 && gun >= 23) || (ay == 11 && gun <= 21)) {
      liste = [Burc(a: 'Akrep\n23 Ekim-21 Kasım', b: 'akrep.png', c: 'akrep')];
      return liste;
    }
    if ((ay == 11 && gun >= 22) || (ay == 12 && gun <= 21)) {
      liste = [Burc(a: 'Yay\n22 Kasım-21 Aralık', b: 'yay.png', c: 'yay')];
      return liste;
    }

    return liste;
  }

  String burcAdiAl(List<Burc> liste) {
    return liste[0].burcAdi;
  }

  String burcImageAl(List<Burc> liste) {
    return liste[0].burcImage;
  }

  String burcDegiskenAl(List<Burc> liste) {
    return liste[0].burcDegisken;
  }
}
