import 'package:flutter/material.dart';

abstract class OurAppTheme{
 static final x = ThemeData(
  appBarTheme:  const AppBarTheme(
  backgroundColor: Colors.purple
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  backgroundColor: Colors.purple,
  unselectedItemColor: Colors.grey,
  selectedItemColor: Colors.white,
  )
  );
}