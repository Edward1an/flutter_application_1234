import 'package:flutter/material.dart';

import '../../states/movies_state.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key, required this.state}) : super(key: key);
  final MoviesState state;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        onChanged: (value) => state.onSearchChanged(value),
        decoration: InputDecoration(
            hintText: 'write your film',
            labelText: 'Search',
            filled: true,
            fillColor: Colors.white.withAlpha(230),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.green, width: 2))),
      ),
    );
  }
}
