import 'package:flutter/material.dart';
import 'package:newdemoproject/views/first_screen.dart';
import 'package:provider/provider.dart';
import 'package:newdemoproject/providers/counterProvider.dart';
import 'package:flutter/foundation.dart';
import 'package:newdemoproject/views/second_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child:  MyApp(),
    ),
  );
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
      routes: {
        '/second': (context) =>  SecondScreen(),
      },
      home: FirstScreen(),
    );
  }
}


