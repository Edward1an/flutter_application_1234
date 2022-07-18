import 'package:flutter/material.dart';
import 'package:flutter_application_1234/Widgets/auth/login.dart';
import 'package:flutter_application_1234/Widgets/main_screen/main_screen_widget.dart';
import 'package:flutter_application_1234/Widgets/register/register_widget.dart';
import 'package:flutter_application_1234/Widgets/reset_password/reset_widget.dart';
import 'package:flutter_application_1234/Widgets/main_screen/main_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
     const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: OurAppTheme.x,
      routes:{
        '/': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/register': (context) => const MainRegisterWidget(),
        '/reset_password': (context) => const MainResetPasswordWidget(),
       
      },
      initialRoute: '/',
      
    
    );
  }
}


