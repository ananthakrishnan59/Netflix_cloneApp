import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflixclone/application/movies/movies_functions.dart';
import 'package:netflixclone/model/model.dart';

Future<List<Movie>> getComingSoonMovies() async {
  final response = await http.get(Uri.parse(upcomingMovies));
  if (response.statusCode == 200) {
    final dataAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(dataAsJson['results']);
    return data.movieList;
  } else {
    throw Exception('try again');
  }
}

Future<List<Movie>> getEveryOnesWatchingMovies() async {
  final response = await http.get(Uri.parse(trendingMovies));
  if (response.statusCode == 200) {
    final dataAsJson = jsonDecode(response.body) as Map<String, dynamic>;
    final data = MovieList.fromJson(dataAsJson['results']);
    return data.movieList;
  } else {
    throw Exception('Try Again');
  }
}
