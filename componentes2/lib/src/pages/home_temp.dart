import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {
  
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text('Pagina componentes temporal'),
          ),
          body: ListView(
            children: _crearItemsCorto()
          ),
    );
   
  }


  List<Widget> _crearItems(){

    List<Widget> lista = [];

      for (String opt in opciones) {
        final tempWidget = ListTile( 
          title: Text(opt),
          subtitle: Text('Apellidos'),
          
        );

        lista..add( tempWidget )
             ..add(Divider(color: Colors.amber, height: 2.0,)) ;
      }

    return lista;

  }
  
  List<Widget> _crearItemsCorto(){
    var widgets = opciones.map((item ) =>
      Column(
        children: <Widget>[
          ListTile( 
            title: Text(item+ '?'),
            subtitle: Text('Apellidos'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
        Divider(),
        ],
      )).toList();

    return widgets;
  }

}