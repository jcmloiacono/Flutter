import 'package:flutter/material.dart';

import 'package:film_v2/providers/movies_provider.dart';
import 'package:film_v2/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    //usando provider para cargar peliculas
    final moviesProvider = Provider.of<MoviesProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
      title: const Text ('Film attuale'),
      centerTitle: true,
      elevation: 0,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[

          // Carrusel superior principal
          CardSwiper(movies: moviesProvider.onDisplayMovies),

          // Slider Inferior
          MovieSlider( movies: moviesProvider.polularMovies,
                       title: 'Populares',
                       onNextPage: () => moviesProvider.getPopularMovies(),
          ),
          // Spazio tra Slider
          SizedBox(height: 10,),
          
        
        ],)
      ,)
    );
  }
}