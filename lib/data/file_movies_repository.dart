import 'package:flutter/material.dart';
import 'dart:convert';

import '../models/movie.dart';
import 'movies_repository.dart';

class FileMoviesRepository implements MoviesRepository {
  FileMoviesRepository({
    required this.context,
    required this.jsonFile,
  });

  final BuildContext context;
  final String jsonFile;

  @override
  Future<List<Movie>> getAllMovies() async {
    final AssetBundle assetBundle = DefaultAssetBundle.of(context);
    final String jsonContent = await assetBundle.loadString(jsonFile);
    final List<dynamic> items = json.decode(jsonContent);
    final result = items
        .map<Map<String, dynamic>>((i) => i as Map<String, dynamic>)
        .map<Movie>(Movie.fromMap)
        .toList();
    return result;
  }

  @override
  Future<List<Movie>> getMoviesBy({required String title}) async {
    final result =
        (await getAllMovies()).where((m) => m.title.startsWith(title)).toList();
    return result;
  }
}
