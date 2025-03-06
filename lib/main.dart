import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentations/screens/buttoms/buttoms_screen.dart';
import 'package:widgets_app/presentations/screens/buttoms/cards/cards_screens.dart';
import 'package:widgets_app/presentations/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),
      home: HomeScreen(),
      routes: {
        '/buttoms': (context) => Cards(),
        '/cards': (context) => CardsScreens(),
      },
    );
  }
}
