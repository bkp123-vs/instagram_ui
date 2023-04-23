import 'package:flutter/material.dart';

import 'screens/home.dart';

void  main(List<String> args) {
  runApp(InstaApp());
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
    
  }
}

