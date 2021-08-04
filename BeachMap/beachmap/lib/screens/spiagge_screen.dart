import 'package:flutter/material.dart';

class SpiaggeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/sfondo.jpg"),
              fit: BoxFit.cover
            ),

          ),
        ),
        
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){}, 
              ),
            ],
          ),

          body: Container() ,




        )
      ],
      
    );
  }
}