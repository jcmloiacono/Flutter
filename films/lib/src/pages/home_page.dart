import 'package:flutter/material.dart';

import 'package:films/src/widget/card_swiper_widget.dart';
import 'package:films/src/providers/peliculas_providers.dart';

class HomePage extends StatelessWidget {
  
  final peliculasprovider = PeluculasProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Film attuale'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
            ), 

        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _swiperTarjetas()
          ],
        )),
    );
  }

Widget _swiperTarjetas() {

  return FutureBuilder(
    future: peliculasprovider.getEnCines(),
    //initialData: InitialData,
    builder: (BuildContext context, AsyncSnapshot snapshot) {
      
      if (snapshot.hasData ){
      
      return CardSwiper( peliculas: snapshot.data);
    
    } else {
      return Container(
        height: 400.0,
        child: Center(
          child: CircularProgressIndicator()
          )
      );
    }

    },
  );


 
}
}