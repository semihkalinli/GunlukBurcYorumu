import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'dogumsec.dart';
import 'burc.dart';
import 'deneme.dart';
import 'detay.dart';

void main() {
  return runApp(
    MaterialApp(
//debugShowCheckedModeBanner: false,
/*routes: {
//"/detay": (context) => Detay(),

},*/
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          title: Text('Burçlar Diyor Ki'),
          backgroundColor: Colors.blueGrey[900],
        ),
//soldan açılan menü mydrawerı görünüme çağırıyoruz
        drawer: MyDrawer(),
        body: SafeArea(
//burclar ana hattımızı body kısmına çağırıyoruz
          child: burclar(),
        ),
      ),
    ),
  );
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
        children: <Widget>[
//Menünün header kısmı
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/header.jpg"), fit: BoxFit.cover),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                //LisTile'de burçları tek tek sergilemek yerine bir liste oluşturulup çekilebilir
                ListTile(
                  title: Text('Oğlak'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
//Navigator.pushNamed(context, "/detay");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
// Detay sayfamızın kurucu methodu ile
// veriyi girip sayfa geçişini yapıyoruz
                            Detay(
                          ay: 1,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Kova'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 2,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Balık'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 3,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Koç'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 4,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  title: Text('Boğa'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 5,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('İkizler'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 6,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  title: Text('Yengeç'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 7,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  title: Text('Aslan'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 8,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  title: Text('Başak'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 9,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Terazi'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 10,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  title: Text('Akrep'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 11,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),

                ListTile(
                  title: Text('Yay'),
                  leading: Icon(Icons.stars),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Detay(
                          ay: 12,
                          gun: 1,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class burclar extends StatefulWidget {
  @override
  _burclarState createState() => _burclarState();
}

class _burclarState extends State<burclar> {
  bool _isVisible = false;
//gizli olan burç detay butona tıklayınca true olarak görünür oluyor
  void goster() {
    setState(() {
      _isVisible = true;
    });
  }

  BurcIslem burcIslem = BurcIslem();
  List<Burc> liste = [];
  String burcAdi = "";
  String burcYorum = "";
  String burcImage = "giris.png";
  String burcDegisken = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Center(
            //Flatbuton ile kullandığımız tarih widgetdan değer alınıp değikenler oluşturuluyor
            child: Container(
              margin: const EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              child: FlatButton(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Doğum Tarihini Seç",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                onPressed: () async {
                  var datePicked = await DatePicker.showSimpleDatePicker(
                    context,
                    dateFormat: "dd-MMMM",
                    initialDate: DateTime(2020, 1, 1),
                    locale: DateTimePickerLocale.tr,
                    looping: false,
                  );
                  if (datePicked == null) {
//tarih boş geliyor mu kontrol ediyoruz
                    print("boş bıraktınız");
                  } else {
//gun ve ayı alıp dogumsec.dart sayfasına götürüyoruz
//listeye sokup değişkenleri belirliyoruz
                    int gun, ay;
                    gun = datePicked.day;
                    ay = datePicked.month;
                    liste = burcIslem.dogumbul(gun, ay);
                    burcDegisken = burcIslem.burcDegiskenAl(liste);
                    burcYorum = await burcCek(burcDegisken);
                    setState(() {
//print(liste[0].burcAdi);
                      burcAdi = burcIslem.burcAdiAl(liste);
                      burcImage = burcIslem.burcImageAl(liste);
                      goster();
                    });
                  }
                },
              ),
            ),
          ),
        ),
        Visibility(
          visible: _isVisible,
          child: Expanded(
            flex: 7,
            child: burcKutular(
              burcAdi: burcAdi,
              burcImage: burcImage,
              burcYorum: burcYorum,
            ),
          ),
        ),
      ],
    );
  }
}

class burcKutular extends StatelessWidget {
  final String burcAdi;
  final String burcYorum;
  final String burcImage;
  burcKutular({this.burcAdi, this.burcYorum, this.burcImage});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Container(
            child: Column(
              children: <Widget>[
//burc Image burada çekiliyor
                Expanded(
                  flex: 2,
                  child: Container(
/*//Bu kod resmin etrafına çerveçe eklemeye yarıyor
decoration: BoxDecoration( border: Border.all(
color: new Color(0xFF333366), width: 4,
),
borderRadius: BorderRadius.circular(12),
),*/
// alignment: Alignment.topCenter,
                    child: Image.asset("images/$burcImage"),
                  ),
                ),
//Burc resmi ile burc adi arasına boşluk koyduk

//burc adi
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
//Burda burcadi degiskenini ekrana basıyoruz
                        Expanded(
                          flex: 1,
                          child: Container(
//alignment: Alignment(1.0, -1.0), child: Center(
                            child: SingleChildScrollView(
                              child: new Text(
                                burcAdi,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
//padding: new EdgeInsets.all(8.0),
                            margin: new EdgeInsets.all(15.0),
                            decoration: new BoxDecoration(
                              color: Colors.blueGrey[700],
//color: new Color(0xFF333366),
                              shape: BoxShape.rectangle,
                              borderRadius: new BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
//burcyorum burada
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
//alignment: Alignment(1.0, -1.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: new Text(
                          "Günlük Burç Yorumunuz;\n\n" + burcYorum,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    margin: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 50.0),
                    padding: new EdgeInsets.all(8.0),
                    decoration: new BoxDecoration(
                      color: Colors.blueGrey[700],
//color: new Color(0xFF333366),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
