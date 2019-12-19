import 'package:http/http.dart' as http;
import 'dart:convert'; //JSON decoder

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    print(response.statusCode);

    if (response.statusCode == 200) {
      String data = response.body;
      
      var decodedData = jsonDecode(data);

      return decodedData;
      
    } else {
      print(response.statusCode);
    }
  }
}
