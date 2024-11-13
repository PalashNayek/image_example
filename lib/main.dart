import 'package:flutter/material.dart';
import 'package:image_example/di/service_locator.dart';
import 'package:image_example/screens/text_in_image_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextInImageScreen(),
    );
  }
}

