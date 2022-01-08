import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newdemoproject/widgets/NavDrawerWIdget.dart';
import 'package:newdemoproject/providers/counterProvider.dart';
import 'package:provider/src/provider.dart';
import 'package:newdemoproject/widgets/customBottomAppBar.dart';
import 'package:newdemoproject/views/HomePage.dart';
import 'package:newdemoproject/views/ChatHomePage.dart';
import 'package:newdemoproject/views/MyAdsHomePage.dart';
import 'package:newdemoproject/views/AccountHomePage.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String _lastSelected = 'TAB: 0';
  int _selectedIndex =0;

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
      _lastSelected = 'TAB: $index';
    });
  }
   _selectedPage(int index){
    if(index==0){
      return HomePage();
    }
    else if (index ==1){
      return ChatHomePage();
    }
    else if(index == 2){
      return MyAdsHomePage();
    }
    else if(index ==3){
      return AccountHomePage();
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Arshs Square collaboration${context.watch<Counter>().count}"),
      ),
      body: _selectedPage(_selectedIndex),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'SELL',
        color: Colors.grey,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'HOME'),
          FABBottomAppBarItem(iconData: Icons.chat, text: 'Chat'),
          FABBottomAppBarItem(iconData: Icons.toys, text: 'MY ADS'),
          FABBottomAppBarItem(iconData: Icons.account_box, text: 'ACCOUNT'),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          key: const Key('increment_floatingActionButton'),

          /// Calls `context.read` instead of `context.watch` so that it does not rebuild
          /// when [Counter] changes.
          onPressed: () => context.read<Counter>().increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,




    );

  }
}


