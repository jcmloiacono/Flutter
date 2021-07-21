import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

final _estiloTexto = new TextStyle(color: Colors.blue[900], fontSize: 25.0, letterSpacing: 2.0,);
final _estiloContador = new TextStyle (color: Colors.orange[900], fontSize: 40.0, );

final contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      appBar: AppBar(
        centerTitle: true,
        elevation: 3.0,
                
        backgroundColor: Colors.red,
        title: Text('Home Page'),
        ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('NUMEROS DE CLICK', style: _estiloTexto), 
            
            Text('$contador', style: _estiloContador),
              
          ],
          ),
        ), 

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
          elevation: 20.0,
          ),
        
    );
    
    
  }

  void _contador(){


  }


}