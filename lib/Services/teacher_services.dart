import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_json2/model/teacher.dart';
import 'dart:convert';

Future<String> _loadteacher() async {   
  return await rootBundle.loadString('assets/teacher.json');
}

// ignore: non_constant_identifier_names
Future LoadTeacher() async {
  String data = await _loadteacher();
  final jsonresponse = json.decode(data);
  Teacher teacher = new Teacher.fromJson(jsonresponse);
  print(teacher.techdesig[1]);
}
