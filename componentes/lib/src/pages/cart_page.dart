import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }

  Widget _cartTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Titulo de la Tarjeta'),
            subtitle: Text(
                'lorem ipsum, lorem ipsumlorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsum, lorem ipsums'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(child: Text('Cancelar'), onPressed: () {}),
              FlatButton(child: Text('Ok'), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  // OPCION 1 MAS FACIL FERNANDO SE COMPLICO PORQUE DECIA QUE NO SIRVE ClipBehavior
  /* Widget _cartTipo2() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shadowColor: Colors.blue,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
              fadeInDuration: Duration(milliseconds: 2000),
              height: 300.0,
              fit: BoxFit.cover,
            ),

            // OPCION 1 PERO SI LA IMAGEN ES PESADA TARDA EN CARGAR
            /* Image(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
        ),*/
            Container(
                padding: EdgeInsets.all(10.0), child: Text('Imagen del campo'))
          ],
        ));
  } */

  // OPCION 2 NO USANDO TARJETA SINO CONTAINER
  Widget _cartTipo2() {
    final card = Container(
        child: Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          fadeInDuration: Duration(milliseconds: 2000),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        // OPCION 1 PERO SI LA IMAGEN ES PESADA TARDA EN CARGAR
        /* Image(
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
        ),*/
        Container(
            padding: EdgeInsets.all(10.0), child: Text('Imagen del campo'))
      ],
    ));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
