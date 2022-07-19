import 'package:flutter/material.dart';

class MovieActorsWidget extends StatelessWidget {
  const MovieActorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.white,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('Cast Series', 
            // textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),),
          )
        ],
      )
      );
  }
}