import 'dart:convert';
import 'package:http/http.dart';
import 'model.dart';


class HttpService {
  final String i;
  HttpService(this.i);

  final String dataURL = "https://ba.0bdd.de/api/v1/ba/hotdrinks";


  Future<List<Data>> getData() async {
    Response res = await get(Uri.parse(dataURL));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Data> data = body
        .map((dynamic item) => Data.fromJson(item),
        )
        .toList();

        return data;
    }
    else {
      throw "Unable to retrieve data";
    }
  }
}