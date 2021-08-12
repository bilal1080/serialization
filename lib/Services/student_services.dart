import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter_json2/model/student.dart';

Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('assets/student.json');
}

Future loadStudent() async {
  String jsonString = await _loadAStudentAsset();
  final jsonResponse = json.decode(jsonString);
  Student student = new Student.fromJson(jsonResponse);
  print(student.stdId);
  print(student.stdName);
  print(student.stdScore);
}
