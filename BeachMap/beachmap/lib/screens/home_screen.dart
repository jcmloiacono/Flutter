import 'package:beachmap/screens/allmaps.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
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
            title: Text(""),
            elevation: 0,
            actions: [
              IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed:(){},
              ),
            ],
          ),

          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.amber[700],
            elevation: 10,
            icon: Icon(
              Icons.play_circle_filled,
              color:Colors.white,
              size: 40.0,
              ),
            label: Text("INIZIA"),
            onPressed: (){
              _navigateToNextScreen(context);
            
            },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

          body: Container(
            child: Center(
              child: Image(
                image: AssetImage("assets/img/logo.png"),
                width: 350.0,
                ), 
            )
          ),
        ),
      ],
    ); 
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AllMaps()));
  }
}



