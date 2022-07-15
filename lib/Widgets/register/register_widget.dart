import 'package:flutter/material.dart';

class MainRegisterWidget extends StatelessWidget {
  const MainRegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title:  const Text('registration'),
          ),
        )
    );
  }
}
