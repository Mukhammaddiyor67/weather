import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    //var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    //  Response response = await get(url);

    // var url =
    //     'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$kApiKey';

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    }
    else {
      return print(response.body);
    }
  }
}