// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1234/states/movies_state.dart';

import '../../models/movie.dart';
import 'movies_widget.dart';
import 'search_widget.dart';

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({Key? key, required this.state}) : super(key: key);
  final MoviesState state;

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  late Future<List<Movie>> futureMovies;
  void _update() => setState(() {
        print('Обновился стейт');
        futureMovies = widget.state.getMovies();
      });

  @override
  void initState() {
    super.initState();
    futureMovies = widget.state.getMovies();
    widget.state.addListener(_update);
  }

  @override
  void dispose() {
    widget.state.removeListener(_update);
    super.dispose();
  }

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
        SearchWidget(
          state: widget.state,
        ),
      ],
    );
  }
}
