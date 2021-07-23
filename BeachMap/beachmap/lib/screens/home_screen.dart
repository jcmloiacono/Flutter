import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/sfondo.jpg"),
              fit: BoxFit.cover
            ),
          ),
        ),
    
        Scaffold(
          appBar: AppBar(
            title: Text(""),
            elevation: 0,
          ),

          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.play_circle_filled),
            onPressed: (){},),

          body: Container(
            child: Center(
              child: Image(
                image: AssetImage("assets/logo.png"),
                width: 350.0,
                ), 
            )
          ),
        ),
      ],
    ); 
  }
}



