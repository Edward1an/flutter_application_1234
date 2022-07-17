import 'package:flutter_application_1234/models/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getAllMovies();
  Future<List<Movie>> getMoviesBy({required String title});
}
