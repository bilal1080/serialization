import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json2/model/shape.dart';

//load to asset
Future<String> _loadData() async {
  return await rootBundle.loadString('assets/shape.json');
}

//load to response
Future LoadShape() async {
  String data = await _loadData();
  final jsonResponse = jsonDecode(data);
  Shape shape = new Shape.fromJson(jsonResponse);
  print(shape.property.height);
}
