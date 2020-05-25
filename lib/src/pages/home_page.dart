import 'package:app_ejemplo_widgets/src/Utils/icon_string_util.dart';
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
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearLista(snapshot.data),
        );
      },
    );
  }

  List<Widget> _crearLista(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.arrow_right),
        onTap: () {},
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
