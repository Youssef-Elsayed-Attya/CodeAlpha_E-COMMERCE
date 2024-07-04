import 'package:flutter/material.dart';
import 'package:sneakers/utils/constants.dart';
import 'package:sneakers/view/auth/register/components/body.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstantsColor.pink,
      body: BodyRegister(),
    );
  }
}
