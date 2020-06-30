import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'package:connectivity/connectivity.dart';

//hurriyet burçlar bölümüne gidip p tagının 5.indisini çekiyoruz
//bu bizim burcYorumumuz oluyor
Future<String> burcCek(String a) async {
  String geriDonder = "";
  var connectivityResult = await (Connectivity().checkConnectivity());
//İnternet bağlantısını kontrol ediyoruz
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    final response = await http.Client()
        .get(Uri.parse('http://mahmure.hurriyet.com.tr/astroloji/burclar/$a/'));
    if (response.statusCode == 200) {
      var document = parse(response.body);
      geriDonder = document.getElementsByTagName("p")[5].text;
    } else {
      print('Hata Kodunuz' + response.statusCode.toString());
      geriDonder = 'Hata Kodunuz' + response.statusCode.toString();
    }
    return geriDonder;
  } else {
    geriDonder = "Lütfen internet bağlantınızı kontrol edin";
  }
  return geriDonder;
}
