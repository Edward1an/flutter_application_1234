import 'package:flutter/material.dart';

class MainResetPasswordWidget extends StatelessWidget {
  const MainResetPasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title:  const Text('reset password'),
          ),
        )
    );
  }
}
