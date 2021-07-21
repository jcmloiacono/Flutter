import 'package:film_v2/models/models.dart';
import 'package:flutter/material.dart';
import 'package:film_v2/widgets/widgets.dart';


class DatailsScreen  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
  // TODO: Cambiar luego por una instanciad movie
  final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
  
  print(movie.title);


    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _CustomAppBar(movie),
          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndTitle(movie),
              _Descriptions(movie),
              //_Descriptions(movie),
              //_Descriptions(movie),
              CastingCards(), // se coloca en un archivo nuevo para evitar codigo largo en un archivo
              
            
            ]),
            
            )

        ],
      ),
    );
  }

}

class _CustomAppBar extends StatelessWidget {

  final Movie movie;

  const _CustomAppBar(this.movie);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          padding: EdgeInsets.only(bottom: 10),
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          child: Text (
            movie.title,
            style: TextStyle( fontSize: 16),
            textAlign: TextAlign.center,
            ),
          ),
        background: FadeInImage(
          image: NetworkImage(movie.fullBackdropPath),
          placeholder: AssetImage('assets/img/loading.gif'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }


}


class _PosterAndTitle extends StatelessWidget {
  
  final Movie movie;

  const _PosterAndTitle(this.movie);

  @override
  Widget build(BuildContext context) {
  
  final TextTheme textTheme = Theme.of(context).textTheme;
  final size = MediaQuery.of(context).size;
    
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/img/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
              width: 120,
            ),
          ),

          SizedBox( width: 20),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: size.width -190),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                Text(
                  movie.title, 
                  style: textTheme.headline5, 
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,),
                  Text(
                  movie.originalTitle, 
                  style: textTheme.subtitle1, 
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,),
          
                  Row(
                    children: [
                      Icon(Icons.star_outline, size: 20, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        '${movie.voteAverage}', 
                        style: textTheme.caption)
                    ],
                  )
              ],
            ),
          )


        ],
      ),
    );
  }
}


class _Descriptions extends StatelessWidget {

  final Movie movie;

  const _Descriptions(this.movie);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(movie.overview,
      textAlign: TextAlign.justify,
      style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

