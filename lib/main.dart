//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import 'core_src/presentation/screens/home_screen.dart';
//  //   ///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared preferences dry-run',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}



//  //   ///
//  Import LIBRARIES
//  Import FILES
//  //   ///