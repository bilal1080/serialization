import 'package:flutter/material.dart';
import 'Services/student_services.dart';

void main() {
  runApp(MyApp());

  loadStudent();
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text("Helllo jee"),
        
      ),
      body: Center(child: Text("JsonParse"),),
      ),
    );
  }
}