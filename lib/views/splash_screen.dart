import 'package:flutter/material.dart';
import 'package:newdemoproject/views/Welcome.dart';
import 'package:newdemoproject/views/first_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}):super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double _width =100;
  double _height = 100;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();

  }

   _updateState(){
    setState(() {
      _width = 400;
      _height = 400;
    });
  }
  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 10),(){});
    _updateState();
    await Future.delayed(Duration(milliseconds: 2030),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
  }
  @override
  Widget build(BuildContext context) {
    var ScreenWidth = MediaQuery.of(context).size.width;
    var ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
//      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text(
                'FirstApp',
                style: TextStyle(
                  fontSize: ScreenWidth/7,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'India\'s leading company',
                style: TextStyle(
                  fontSize: ScreenWidth/20,
                ),
              ),
             AnimatedContainer(
                 duration: Duration(milliseconds: 2000),
               width: _width,
               height: _height,
               child: Image.asset('assets/images/smileFace.png',),

             ),

             

            ]
          ),
        ),
      ),
    );
  }
}
