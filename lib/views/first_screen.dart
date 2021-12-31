import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newdemoproject/widgets/NavDrawerWIdget.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Arsh Square collaboration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(
          'Arsh Senior Developers',
        ),
        Text(
          'Arsh Junior Develper'
        ),
        ]
        ),
      ),

    );

  }
}
