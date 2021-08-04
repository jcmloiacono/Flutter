import 'package:beachmap/screens/all_screens.dart';
import 'package:flutter/material.dart';

class SudOvest extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children:[ Container(
        decoration: BoxDecoration(
          color: Colors.cyan[900]
          ),
        ),
      

      Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/img/logo.png"),
              width: 130.0,
              )
            ],
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.menu_open),
              onPressed: (){}, 
              )
          ],),
      
      
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50.0, top: 50.0),
              child: Center(
                child: Text("SUD / OVEST", 
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                          ),
                        ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(16.0),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            _navigateToNextScreen(context);
                          },
                          child: const Text('VAI ALLA SPIAGGIA'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SpiaggeScreen()));
  }
}
