import 'package:flutter/material.dart';
import 'package:sneakers/utils/constants.dart';
import 'package:sneakers/view/auth/login/components/body.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstantsColor.backgroundColor,
      body: BodyLogin(),
    );
  }
}
