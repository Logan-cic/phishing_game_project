import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  void initializerSplash() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  void initState(){
    initializerSplash();
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset("images/logo.png")
        ),
      );
  }
}