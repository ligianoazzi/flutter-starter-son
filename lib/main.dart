import 'package:flutter/material.dart';
import 'template.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
    Widget build(BuildContext context){
      return new MaterialApp(
      title: 'SON contador de cursos',
      home: new Template()
    );
  }
}

