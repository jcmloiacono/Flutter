import 'package:flutter/material.dart';

import 'package:beachmap/widgets/all_widgets.dart';

class AllMaps extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    
    return Stack(
      children: [
        Container(
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
              icon: Icon(Icons.search_outlined),
              onPressed: (){}, 
            ), 
            
          ],
            
        ),
    
          body: CardMaps(),
        
        bottomNavigationBar: BottomNavigationBar(
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
              icon: Icon(Icons.star),
              label: 'Preferiti',
              backgroundColor: Colors.transparent,
              ),
          ]
          ),
      ),
    ] // Children Stack
  );

  }

  
}

