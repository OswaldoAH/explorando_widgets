import 'package:flutter/material.dart';
 
import 'package:app_ejemplo_widgets/src/pages/home_page.dart';
import 'package:app_ejemplo_widgets/src/pages/alert_page.dart';
import 'package:app_ejemplo_widgets/src/pages/avatar_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: <String,WidgetBuilder>{
        '/':(BuildContext context)=>HomePage(),
        'alert':(BuildContext context)=> AlertPage(),
        'avatar' : (BuildContext context)=> AvatarPage(),
      },
    );
  }
}