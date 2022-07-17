import 'package:flutter/foundation.dart';

import '../data/movies_repository.dart';
import '../models/movie.dart';

class MoviesState extends ChangeNotifier {
  MoviesState({required MoviesRepository repository}) : _repo = repository;
  final MoviesRepository _repo;
  var _currentMovies = <Movie>[];

  Future<List<Movie>> getMovies() async {
    if (_currentMovies.isEmpty) {
      _currentMovies = await _repo.getAllMovies();
    }
    print('Отображаем: $_currentMovies');
    return _currentMovies;
  }

  void onSearchChanged(String text) async {
    final searchText = text.trim();
    if (searchText.isEmpty) {
      _currentMovies.clear();
      _setState(() {
        print('Очистили поиск');
      });
      return;
    }
    var foundMovies = await _repo.getMoviesBy(title: searchText);
    _setState(() {
      _currentMovies = foundMovies;
      print('Нашли: $foundMovies');
    });
  }

  void _setState(VoidCallback callback) {
    callback();
    notifyListeners();
  }
}
