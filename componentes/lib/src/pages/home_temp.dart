import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'Siete'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes Temp')),
      body: ListView(children: _crearItemsCorta()),
    );
  }

// OPCION 1 CON ListView
/*   List<Widget> _crearItemps() {
    List<Widget> lista = <Widget>[];

    num cont = 1;
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Texto de prueba' + '$cont'),
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.red[300],
          height: 2.0,
        ));
      cont++;
    }

    return lista;
  } */
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Texto de ejemplo'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
