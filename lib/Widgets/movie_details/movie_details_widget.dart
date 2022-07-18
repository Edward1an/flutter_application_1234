import 'package:flutter/material.dart';
import 'package:flutter_application_1234/Widgets/movie_details/movie_details_main_info.dart';

class MovieDetailsWidget extends StatefulWidget {
final int movieId;
  const MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);
  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('waric'),
      ),
      body: ColoredBox(
        color: const Color.fromRGBO(25, 24, 27, 1.0),
        child: ListView(
          children:  const [
            MovieMainWidget(),
          ],
        ),
      )
    );
  }
}