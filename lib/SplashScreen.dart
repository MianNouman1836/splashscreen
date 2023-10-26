import 'package:flutter/material.dart';
import 'package:splashscreen/main.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for the first splash screen (e.g., 2 seconds) before navigating to SplashScreen2.
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: SplashScreen2(),
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Customize the background color
      body: Center(
        child: Hero(
          tag: 'image1', // Hero tag for the image
          child: Image.asset('assets/images/punjab-group-of-colleges-logo-0F6CF800F3-seeklogo.com.png'), // Replace with your image for SplashScreen1
        ),
      ),
    );
  }
}

class SplashScreen2 extends StatefulWidget {
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for the second splash screen (e.g., 2 seconds) before navigating to the HomePage.
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) {
            return FadeTransition(
              opacity: animation,
              child: MyHomePage(title: "HELLO"),
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Text(
                  'Sponsored By',
                  style: TextStyle(
                    fontSize: 20, // Customize the text size
                    fontWeight: FontWeight.bold, // Customize the text style
                  ),
                ),
                Hero(
                  tag: 'image1', // Hero tag for the image, should match the one in SplashScreen1
                  child: Image.asset('assets/images/logo.png',
                  width: 300,
                  height: 500,), // Replace with your image for SplashScreen2
                ),
          ],
        ),
      ),
    );
  }
}