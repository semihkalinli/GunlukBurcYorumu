import 'main.dart';
import 'package:flutter/material.dart';
import 'dogumsec.dart';
import 'burc.dart';
import 'deneme.dart';

class Detay extends StatefulWidget {
//burada maindeki listileden gün ve ay değerlerini alıyoruz
  final int ay;
  final int gun;
  Detay({this.ay, this.gun});
  @override
  _DetayState createState() => _DetayState(gun: gun, ay: ay);
}

class _DetayState extends State<Detay> {
// Maindeki burçlar ayrılmadığından burada biraz kod tekrarına düşüyoruz
// Ayrılsa dahi değişkenler farklı yerleden değer alıyor
  BurcIslem burcIslem = BurcIslem();
  List<Burc> liste = [];
  String burcAdi = "";
  String burcYorum = "";
  String burcImage = "giris.png";
  String burcDegisken = "";
  final int ay;
  final int gun;
  _DetayState({this.ay, this.gun});
  @override
  void initState() {
    super.initState();
    liste = burcIslem.dogumbul(gun, ay);
    burcDegisken = burcIslem.burcDegiskenAl(liste);
    burcCek(burcDegisken);
//burcYorum = await burcCek(burcDegisken);
// burcCek async olması gerektiğinden ve izin verilmediğinden
// .then result yöntemi ile burcYorum olayını çözüyoruz
    burcCek(burcDegisken).then((result) {
//result değerini burcYoruma aktarıyoruz
      setState(() {
        burcYorum = result;
      });
    });
//print(liste[0].burcAdi);
    burcAdi = burcIslem.burcAdiAl(liste);
    burcImage = burcIslem.burcImageAl(liste);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text(burcAdi),
        backgroundColor: Colors.blueGrey[900],
      ),
//drawer: MyDrawer(), //Soldan açılan menü
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.0),
//şimdi burckutular classımızı çağırıyoruz
              Expanded(
                child: burcKutular(
                  burcAdi: burcAdi,
                  burcImage: burcImage,
                  burcYorum: burcYorum,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
