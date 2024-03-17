import 'package:flutter/material.dart';
import 'package:seequenze_task/widgets/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seequenze Task',
      home: LoginScreen(),
    );
  }
}
