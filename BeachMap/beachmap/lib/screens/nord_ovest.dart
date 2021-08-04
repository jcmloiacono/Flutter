import 'package:flutter/material.dart';

class NordOvest extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 

    return Stack(
      children:[ Container(
        decoration: BoxDecoration(
          color: Colors.cyan[900],
        ),
      ),

      Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image(image: AssetImage("assets/img/logo.png"),
            width: 130.0,)
          ],
          ),
          elevation: 10,
          actions: [
            IconButton(
              icon: Icon(Icons.menu_open),
              onPressed: (){}, 
            ),
          
        ],
        
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [

        
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Text("NORD / OVEST", 
                    style: TextStyle(
                      fontSize:40.0,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0
                      )
                    ]
                    ),
                  ),
                ),
              ],
            ),

            Container(
              
              width: double.infinity,
              height: size.height * 0.5,
              color: Colors.red,
              child: Center(child: Text("MAPA"))
                
              ),
            
          ],

        ),

          

        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          items: <BottomNavigationBarItem>[
            
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.transparent,
              ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Preferiti',
              backgroundColor: Colors.transparent,
              ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Cerca',
              backgroundColor: Colors.transparent,
              ),
              
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: 'Condividi',
              backgroundColor: Colors.transparent,
              ),
          ]
          ),

      )



      ],
    );
  }
}