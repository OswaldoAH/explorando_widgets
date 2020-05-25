import 'package:flutter/material.dart';

import 'package:app_ejemplo_widgets/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(menuProvider.opciones);
    return ListView(
      children: _crearLista(),
    );
  }

  List<Widget> _crearLista() {
    return [
      ListTile(title: Text('Algo'),)
    ];
  }
}
