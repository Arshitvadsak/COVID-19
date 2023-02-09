import 'dart:convert';
import 'package:http/http.dart' as http;
import '../modals/covid_19.dart';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  Future<List<Corona>?> getData() async {
    final String api = "https://disease.sh/v3/covid-19/countries";

    http.Response res = await http.get(
      Uri.parse(api),
    );

    if (res.statusCode == 200) {
      List decodedData = jsonDecode(res.body);
      print("ok");

      List<Corona> allData =
          decodedData.map((e) => Corona.fromMap(data: e)).toList();
      return allData;
    }
  }
}
