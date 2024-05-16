import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/screens/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YES_NO App',
      debugShowCheckedModeBanner: false,
      theme: Apptheme(selectedColor:1).theme(),
      home: const ChatScreen()
    );
  }
}