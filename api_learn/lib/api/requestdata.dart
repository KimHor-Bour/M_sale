import 'package:api_learn/model/data.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiDatas {
  static Future<List<Datas>> loadData() async {
    http.Response response = await http.get(
        "https://api.github.com/repos/flutter/flutter/contributors");
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      final datasJson = json.decode(response.body);
      List<Datas> datas = List<Datas>();
      for (final dataJson in datasJson) {
        final data = Datas.fromJson(dataJson);
        datas.add(data);
      }
      return datas;
    }
  }
}