import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_sexmode/config/router/app_router.dart';
import 'package:widgets_sexmode/config/themes/app_theme.dart';


void main() {
//  const  ProviderScope(child: MainApp());
  runApp(const ProviderScope(child: MainApp()));
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: "Flutter Widgets",
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      
    );
  }
}

///This is a test 2