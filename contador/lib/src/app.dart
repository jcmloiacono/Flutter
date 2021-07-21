import 'package:flutter/material.dart';

//Import Personal
import 'package:contador/src/pages/contador_page.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}
