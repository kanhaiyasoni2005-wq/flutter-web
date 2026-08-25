import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:portfolio_web/model/httpmodel.dart';
import 'package:http/http.dart' as http;

class Httpprovider extends ChangeNotifier{

  List<HttpApi> _post = [];
  List<HttpApi> get item => _post;

Future<void> fatch() async {
  final response = await http.get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts"),
  );

  print("Status: ${response.statusCode}");

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);

    _post = data.map<HttpApi>((e) {
      return HttpApi.fromjson(
        e as Map<String, dynamic>,
      );
    }).toList();

    notifyListeners();
  } else {
    throw Exception("Failed to fetch");
  }
}
}