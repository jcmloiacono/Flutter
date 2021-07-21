import 'package:flutter/material.dart';

import 'package:componentes2/src/routes/routes.dart';
import 'package:componentes2/src/pages/alert_page.dart';



void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      /* home: HomePage(), */
      initialRoute: '/',
      routes: getApplicationRoutes(),

      //EN CASO DE QUE NO SE ENCUENTRE LA RUTA LA ENVIAMOS A UNA RUTA ESPECIFICA

      onGenerateRoute: ( RouteSettings settings ){

        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        
        );
      } ,
      
    );
  }
}

