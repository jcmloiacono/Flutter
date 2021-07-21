import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Alertas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text ('Notificar del error'),
              onPressed: () => _mostrarAlerta(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: StadiumBorder()
              ),
            ),
          ),
          Text('Error 404', style: TextStyle(
            fontSize: 30.0  ) ,)
        
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reset_tv_rounded),
        onPressed: (){
          Navigator.pop(context);
        },),
    );
  }

void _mostrarAlerta(BuildContext context) {
  showDialog(
    context: context, 
    barrierDismissible: true,
    builder: (context){

      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text('Enviando mensaje'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
          Text('Gracias por notificarnos...'),
          FlutterLogo( size: 200.0,)

          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(), 
            child: Text('Cancelar')),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/'), 
            child: Text('Ok')),
            
        ],
      );

    }
    );
}
}
