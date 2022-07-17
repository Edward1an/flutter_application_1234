import 'package:flutter/material.dart';

class Movie {
  final String title, time, description;
  final int id;
  final AssetImage imageName;

  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });

  @override
  String toString() => 'Movie(id: $id, title: $title)';
}
