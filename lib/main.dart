import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/firebase_options.dart';
import 'package:sneakers/services/auth.dart';
import 'package:sneakers/view/auth/login/login_screen.dart';
import 'package:sneakers/view/navigator.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      title: 'Sneakers Shop App',
      home:  StreamBuilder(
        stream: Auth().authState(),
        builder: (context, snapshot) {
          if(!snapshot.hasData){
            return const LoginScreen();
          }
          return MainNavigator();
        },
      )
    );
  }
}
