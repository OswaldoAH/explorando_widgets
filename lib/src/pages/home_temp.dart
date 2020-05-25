import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItems()
        
      ),
    );
  }
  List<Widget> _crearItems(){
    
    List<Widget> lista =List<Widget>();
    opciones.forEach((element) {
      final tempWidget = ListTile(
        title: Text(element),
      );
      lista..add(tempWidget)
           ..add(Divider());
    });
    return lista;
  }
}
