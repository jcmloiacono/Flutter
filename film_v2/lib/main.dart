import 'package:flutter/material.dart';

import 'package:film_v2/pages/pages.dart';
import 'package:provider/provider.dart';
import 'package:film_v2/providers/movies_provider.dart';

void main() => runApp(MoviesProviderState());

class MoviesProviderState extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( context ) => MoviesProvider(), lazy: false,),

      ],
      child: MyApp(),
    );
  }
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home' : ( _ ) => HomePage(),
        'details' : ( _ ) => DatailsScreen(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.indigo
        )
      ),
    );
  }
}