import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHolder{
  final String url;

  NetworkHolder(this.url);

  Future getData() async{
    http.Response response= await http.get(Uri.parse(url));

    if(response.statusCode== 200){
      String data = response.body;
      print(data);

      var decodeDate = jsonDecode(data);
      return decodeDate;
    }else{
      print (response.statusCode);
    }

  }
}