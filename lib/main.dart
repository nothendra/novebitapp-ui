import 'package:flutter/material.dart';
import 'package:hendras_app/pages/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash(), 
    routes: {
      '/login': (context) => Login(),
      '/register': (context) => Register(),
      '/dashboard': (context) => Dashboard(),
      '/favorites': (context) => Favorites(),
    
    });
  }
}
