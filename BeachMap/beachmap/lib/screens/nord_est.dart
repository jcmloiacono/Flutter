import 'package:flutter/material.dart';

class NordEst extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [ Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/sfondo.jpg"),
            fit: BoxFit.cover ),
        ),
      ),

      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}), 
          ],),

        body: Column(
          children: [
            Container(

              margin: EdgeInsets.only(bottom: 50.0,  top: 50.0),
              child: Center(
                child: Text("Nord Est", 
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.amber,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0
                    )
                  ]
                  ),
                ),
              ),
            ),
          ],
        ),







      )

      ],
    );
  }
}