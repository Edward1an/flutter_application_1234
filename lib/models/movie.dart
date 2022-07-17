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

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id'] as int,
      imageName: AssetImage(map['imageName'] as String),
      title: map['title'] as String,
      time: map['time'] as String,
      description: map['description'] as String,
    );
  }

  @override
  String toString() => 'Movie(id: $id, title: $title)';
}
