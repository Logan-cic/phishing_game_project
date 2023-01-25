import 'package:flutter/material.dart';
import 'package:phishing_game_project/Login.dart';
import 'package:phishing_game_project/SignUp.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin 
  ? Login(onClickedSignUp: toggle,) 
  : SignUp(onClickedSignIn: toggle,);

  void toggle() => setState(() => isLogin = !isLogin);
}
