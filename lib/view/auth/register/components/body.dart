import 'package:flutter/material.dart';
import 'package:sneakers/animation/fadeanimation.dart';
import 'package:sneakers/animation/scale_animation.dart';
import 'package:sneakers/services/auth.dart';
import 'package:sneakers/theme/custom_app_theme.dart';
import 'package:sneakers/utils/constants.dart';
import 'package:sneakers/view/auth/login/login_screen.dart';
import 'package:sneakers/view/auth/widget/circle_widget.dart';
import 'package:sneakers/view/auth/widget/text_form_widget.dart';
import 'package:sneakers/view/auth/widget/under_line_text_widget.dart';

import '../../../../widget/widget.dart';

class BodyRegister extends StatelessWidget {
  const BodyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // Define relative sizes for the circles
    final double purpleCircleSize = width * 0.999;
    final double circleSizeMedium = width * 0.8;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController nameController = TextEditingController();

    Future signUp(name,email,password) async{
      showProgress(context);
      try{
        Auth().signUp(name, email, password).then((value) {
          endProgress(context);
          successSnackBar(context, 'success create user');
        },);
      }catch(e){
        endProgress(context);
        failedSnackBar(context, e.toString());
      }
    }

    Form inputForm(
        TextEditingController nameController,
        TextEditingController emailController,
        TextEditingController passController) {
      return Form(
          child: Column(
        children: [
          FadeAnimation(
            delay: 2,
            child: MyTextForm(
              hintText: 'Name',
              hintStyle: AppThemes.whiteHintText,
              controller: nameController,
              fillColor: AppConstantsColor.softBlack,
            ),
          ),
          FadeAnimation(
            delay: 2.5,
            child: MyTextForm(
              hintText: 'Your Email',
              hintStyle: AppThemes.whiteHintText,
              controller: emailController,
              fillColor: AppConstantsColor.softBlack,
            ),
          ),
          FadeAnimation(
            delay: 3,
            child: MyTextForm(
              hintText: 'password',
              hintStyle: AppThemes.whiteHintText,
              controller: passController,
              fillColor: AppConstantsColor.softBlack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sign Up",
                  style: AppThemes.authNav,
                ),
                FadeAnimation(
                  delay: 3.5,
                  direction: Axis.horizontal,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(10),
                    onPressed: () {

                      signUp(nameController.text, emailController.text, passController.text);
                    },
                    color: AppConstantsColor.purple,
                    shape: const CircleBorder(eccentricity: 0),
                    child: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ));
    }

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        fit: StackFit.passthrough,
        alignment: Alignment.topLeft,
        children: [
          ScaleAnimation(
            delay: 1,
            child: Circle(
                radius: circleSizeMedium,
                color: AppConstantsColor.lightTextColor,
                x: 4,
                y: 1.5),
          ),
          ScaleAnimation(
            delay: 1.5,
            child: Circle(
                radius: purpleCircleSize,
                color: AppConstantsColor.purple,
                y: -1.9,
                x: -600),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment(-0.5, -0.8),
                child: Text(
                  'Create\nAccount',
                  style: AppThemes.headLine,
                ),
              ),
              inputForm(nameController, emailController, passController),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    UnderLineText(
                      fun: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      color: AppConstantsColor.yellow,
                      style: AppThemes.yellowUnderLine,
                      text: 'Sign In',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
