import 'package:flutter/material.dart';

class SudEst extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children:[ Container(
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
              )
          ],),
      
      
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50.0, top: 50.0),
              child: Center(
                child: Text("Sud Est", 
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.amber,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                    )
                  ]
                ),
                ),
              ),
            ),

            Container(
              width: double.infinity,
              height: size.height * 0.5,
              color: Colors.red,
              child: Center(child: Text("MAPA"),),
            )
          ],
        
        ),

        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          items: <BottomNavigationBarItem>[

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.transparent
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Preferiti",
              backgroundColor: Colors.transparent,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "Cerca", 
              backgroundColor: Colors.transparent
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: "Condividi",
              backgroundColor: Colors.transparent
            ),

          ],
        ),
      
      
      
      
      
      
      
      
      
      
      
      )

















    ]
    );
  }
}