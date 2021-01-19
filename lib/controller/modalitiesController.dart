import 'dart:convert';
import 'package:movpass_test/services/api.dart' as api;
import 'package:http/http.dart' as http;
import 'package:movpass_test/model/modalities.dart';

class ModalityAPI{
  Future<List<Modalities>> getAll() async {
    http.Response response =
    await http.get(api.urlBase + "/modalities/");

    if (response.statusCode == 200) {
      // print("resultado: " + response.body);
      List<dynamic> dadosJson = json.decode(response.body);

      List<Modalities> trainers = dadosJson.map<Modalities>((map) {

        return Modalities.fromJson(map);
      }).toList();
      return trainers;
    } else {
      print("resultado  :" + response.statusCode.toString());
    }
  }
}
