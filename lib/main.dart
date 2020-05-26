import 'package:flutter/material.dart';
 
import 'package:app_ejemplo_widgets/src/routes/routes.dart';
import 'package:app_ejemplo_widgets/src/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (BuildContext context)=>AlertPage());
      },
    );
  }
}