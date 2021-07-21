import 'package:flutter/material.dart';

import 'package:componentes2/src/providers/menu_provider.dart';
import 'package:componentes2/src/utils/icono_string_util.dart';
import 'package:componentes2/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot  snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetMenu = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {

          
          Navigator.pushNamed(context, opt['ruta']);

          /* final route = MaterialPageRoute(
            builder: (context) => AlertPage()
          );

          Navigator.push(context, route); */

        },
      );
      opciones..add(widgetMenu)..add(Divider());
    });
    return opciones;
  }
}
