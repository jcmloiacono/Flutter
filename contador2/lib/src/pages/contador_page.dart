import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {
  
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

final _estiloTexto = new TextStyle(color: Colors.blue[900], fontSize: 25.0, letterSpacing: 2.0,);
final _estiloContador = new TextStyle (color: Colors.orange[900], fontSize: 40.0, );

int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            
            Text('$_contador', style: _estiloContador),
              
          ],
          ),
        ), 

      
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: _crearBotones()
        
    );
    
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width:20.0),
    FloatingActionButton(
      child: Icon(Icons.exposure_zero),
      onPressed: (){
        _resetCounter();
      }),
      Expanded(child: SizedBox(width: 0.0,)),
    FloatingActionButton(
      child: Icon(Icons.remove_circle),
      onPressed: (){
        _removeCounter();
      }),
      SizedBox(width: 10.0,),
    FloatingActionButton(
      child: Icon(Icons.add_circle),
      onPressed: (){
        _addCounter();
      }),
      SizedBox(width: 10.0,),
      ],
    );
    
  }

  void _resetCounter() {
    setState(() {
    _contador = 0;
      
    });

  }

  void _removeCounter() {
    setState(() {
      
    _contador --;
    });
  }

  void _addCounter() {
   setState(() {
     
    _contador++;
   });
  }


}