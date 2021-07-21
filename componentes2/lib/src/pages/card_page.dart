import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Tarjetas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cartTipo1(),
          SizedBox(height: 30.0,),
          _cartTipo2(),
          SizedBox(height: 30.0,),
          _cartTipo1(),
          SizedBox(height: 30.0,),
          _cartTipo2(),
          SizedBox(height: 30.0,),
          _cartTipo1(),
          SizedBox(height: 30.0,),
          _cartTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

Widget _cartTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0) ),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.phone_forwarded_sharp),
          title: Text('Contacto No.1'),
          subtitle: Text('asdsadaasd ad a dasdasdasdasdadvbcbgfhg gdfg dfg gdofg dofvmdmbosmgasmpaw  safdmasmflò sadfmaasm pas pdfmpasf'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text ('Cancelar'),
              onPressed: (){},
            ),
            TextButton(
              child: Text ('Ok'),
              onPressed: (){},
            ), 
          ],
        )
      ],
        ),
  );
}

Widget _cartTipo2() {
  final card = Container(
      child: Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
          ),
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Imagen de muestra'))
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black26, 
        blurRadius: 15.0,
        spreadRadius: 2.0,
        offset: Offset(2.0, 10.0),
      ),
      ]//color: Colors.red,
      ),
    
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(10.0),
    ),
  );

} 
}