import 'package:flutter/material.dart';
import 'package:widgets_sexmode/config/themes/app_theme.dart';
import 'package:widgets_sexmode/presentation/Screns/cards/cards_screens.dart';
import 'package:widgets_sexmode/presentation/Screns/home/buttons/buttons_screen.dart';
import 'package:widgets_sexmode/presentation/Screns/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(),
      home: const HomeScreen(),
      routes: {
        "/buttons":(context) =>const ButtonsScreen(),
        
        "/cards":(context) => const CardScreen(),
      },
    );
  }
}

///This is a test