//@dart=2.9

class Peliculas {

  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList( List<dynamic> jsonList){

    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }

  }

}

class Pelicula{
  int voteCount;
  int id;
  bool video;
  double voteAverage;
  String title;
  double popularity;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  List<int> genereIds;
  String backdropPath;
  bool adult;
  String overview;
  String releaseDate;


Pelicula({
  this.voteCount,
  this.id,
  this.video,
  this.voteAverage,
  this.title,
  this.popularity,
  this.posterPath,
  this.originalLanguage,
  this.originalTitle,
  this.genereIds,
  this.backdropPath,
  this.adult,
  this.overview,
  this.releaseDate,
});

  Pelicula.fromJsonMap(Map<String, dynamic> json ){

    voteCount         = json['vote_count'];
    id                = json['id'];
    video             = json['video'];
    voteAverage       = json['vote_average'] /1 ; // para convertir a double por fuerza en caso de que sea un numero plano
    title             = json['title'];
    popularity        = json['popularity'] /1 ;
    posterPath        = json['poster_path'];
    originalLanguage  = json['original_language'];
    originalTitle     = json['original_title'];
    genereIds         = json['genre_ids'].cast<int>();
    backdropPath      = json['backdrop_path'];
    adult             = json['adult'];
    overview          = json['overview'];
    releaseDate       = json['release_date'];
  }

  getPosterimg(){

    if ( posterPath == null){

        return 'https://prolococaluso.altervista.org/wp-content/uploads/2013/03/immagine-non-disponibile.gif';
    }else {

    return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }


}