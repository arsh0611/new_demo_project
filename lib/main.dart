import 'package:flutter/material.dart';
import 'package:newdemoproject/views/first_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arsh Heer',
      theme: ThemeData.light(),
      home: FirstScreen(),
    );
  }
}


