import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newdemoproject/widgets/NavDrawerWIdget.dart';
import 'package:newdemoproject/providers/counterProvider.dart';
import 'package:provider/src/provider.dart';

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
        title: Text("Arshs Square collaboration${context.watch<Counter>().count}"),
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
            Container(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/second');
                },
                child: Text("Collaboration Chapter2"),
              ),
            ),
        ]

        ),

      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),

        /// Calls `context.read` instead of `context.watch` so that it does not rebuild
        /// when [Counter] changes.
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );

  }
}
