
import 'package:beachmap/screens/all_screens.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beach Map',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),
        'details': ( _ ) => DetailScreen()
      },
      //My styles for App
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
        ),
        scaffoldBackgroundColor: Colors.transparent // Background the Scaffold
      ), 

    );
  
  } 
}