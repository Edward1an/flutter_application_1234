// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter_application_1234/Widgets/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1234/states/movies_state.dart';

import '../../models/movie.dart';
import 'movies_widget.dart';
import 'search_widget.dart';

class MovieListWidget extends StatelessWidget {
  MovieListWidget({Key? key, required this.state}) : super(key: key);
  final MoviesState state;
  late Future<List<Movie>> futureMovies = state.getMovies();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FutureBuilder<List<Movie>>(
          future: futureMovies,
          builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Возникла ошибка загрузки данных.'),
                  );
                }
                final movies = snapshot.data ?? <Movie>[];
                return MoviesWidget(movies: movies);
            }
          },
        ),
        SearchWidget(),
      ],
    );
  }
}
