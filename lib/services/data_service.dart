import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:praying/models/app_model.dart';

class DataService {
  DataService();

  Future<AppModel> readJson() async {
    final String response = await rootBundle.loadString('assets/json/preghiera.json');

    final data = await json.decode(response);

    return AppModel.fromJson(data as Map<String, dynamic>);
  }
}
