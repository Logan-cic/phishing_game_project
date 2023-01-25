import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Auth_page.dart';
import 'package:phishing_game_project/Home.dart';
import 'package:phishing_game_project/Login.dart';
import 'package:phishing_game_project/Screens/Resposta/Formulario_de_Resposta.dart';
import 'package:phishing_game_project/Utils.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}

class Myapp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();
  Utils utils = Utils();

  @override
  Widget build(BuildContext context) => MaterialApp(
        scaffoldMessengerKey: utils.messengerKey,
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
      );
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Home();
            } else {
              return AuthPage();
            }
          },
        ),
      );
}
