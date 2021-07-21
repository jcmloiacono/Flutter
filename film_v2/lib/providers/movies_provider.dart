import 'package:film_v2/models/popular_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:film_v2/models/models.dart';


class MoviesProvider extends ChangeNotifier{

  String _apiKey    = '624eb24ba9e153f29504d82d7a8393c4';
  String _dominio   = 'api.themoviedb.org';
  String _language  = 'it-IT';

  List<Movie> onDisplayMovies = [];
  List<Movie> polularMovies = [];
  int _popularPage = 0;

  MoviesProvider(){

    print('Movies Provider Inicializado');

    this.getOnDisplayMovies();
    this.getPopularMovies();
  }

  Future<String>_getJsonData( String endpoint, [int page = 1]) async{

    var url = Uri.https( _dominio, endpoint, {
      'api_key' : this._apiKey,
      'language': this._language,
      'page'    : '$page',
    
        
    });

    final response = await http.get(url);
    return response.body;
    

  }

  getOnDisplayMovies() async{

    final jsonData = await _getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);
    
    onDisplayMovies = nowPlayingResponse.results;

    // Mantiene en escucha a los widget y redibuja a la hora de cambios
    notifyListeners();

  }


  getPopularMovies() async{

    _popularPage++;

    final jsonData = await _getJsonData('3/movie/popular', _popularPage );
    final popularResponse = PopularResponse.fromJson(jsonData);
    
    // ... Sirve para desectruturar datos
    polularMovies = [...polularMovies, ...popularResponse.results];
    print(polularMovies[0]);

    // Mantiene en escucha a los widget y redibuja a la hora de cambios
    notifyListeners();

  }

}