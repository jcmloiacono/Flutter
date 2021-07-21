import 'dart:convert';
import 'package:http/http.dart' as http_lib;


import 'package:films/src/models/film_model.dart';

class PeluculasProvider {

  String _apikey    = '624eb24ba9e153f29504d82d7a8393c4';
  String _url       = 'api.themoviedb.org';
  String _language  = 'it-IT';

  
  Future <List<Pelicula>>getEnCines() async{

    final url = Uri.https(_url, '/3/movie/now_playing', {

      'api_key' : _apikey,
      'language': _language,

    });

    final resp = await http_lib.get(url);
    final decodeData = json.decode(resp.body);

    final peliculas =new Peliculas.fromJsonList(decodeData['results']);

    

    return peliculas.items;




  }


}