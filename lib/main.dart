import 'package:flutter/material.dart';
 
import 'package:app_ejemplo_widgets/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp()
    );
  }
}