import 'package:flutter/material.dart';
import 'sender_page.dart';
 
void main() {
  runApp(const MainApp());
}
 
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SenderPage(),
      theme: ThemeData(
        primaryColor: Colors.cyan,
      )
    );
  }
}