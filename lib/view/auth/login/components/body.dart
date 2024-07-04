import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/animation/fadeanimation.dart';
import 'package:sneakers/animation/scale_animation.dart';
import 'package:sneakers/services/auth.dart';
import 'package:sneakers/theme/custom_app_theme.dart';
import 'package:sneakers/utils/constants.dart';
import 'package:sneakers/view/auth/register/register_screen.dart';
import 'package:sneakers/view/auth/widget/circle_widget.dart';
import 'package:sneakers/view/auth/widget/under_line_text_widget.dart';
import 'package:sneakers/view/navigator.dart';
import 'package:sneakers/widget/progress_indicator.dart';
import 'package:sneakers/widget/snack_bar.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // Define relative sizes for the circles
    final double circleSizeLarge = width * 0.999;
    final double circleSizeMedium = width * 0.7;
    final double circleSizeSmall = width * 0.6;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();

    Future signIn() async {
      showProgress(context);
      try {

        UserCredential user =await Auth().signIn(emailController.text, passController.text);
        bool verified= user.user!.emailVerified;
        if(verified){
          endProgress(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainNavigator(),));
        }else{
          endProgress(context);
          failedSnackBar(context, 'email not verified');
        }

      } catch (e) {
        endProgress(context);
        failedSnackBar(context, e.toString());

      }
    }

    Form inputForm(TextEditingController emailController,
        TextEditingController passController) {
      return Form(
          child: Column(
        children: [
          FadeAnimation(
            delay: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Your Email',
                    hintStyle: AppThemes.hintText,
                    fillColor: AppConstantsColor.unSelectedTextColor,
                    filled: true),
              ),
            ),
          ),
          FadeAnimation(
            delay: 2.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextFormField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'password',
                    hintStyle: AppThemes.hintText,
                    fillColor: AppConstantsColor.unSelectedTextColor,
                    filled: true),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Sign in",
                  style: AppThemes.authNav,
                ),
                FadeAnimation(
                  delay: 3,
                  direction: Axis.horizontal,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(10),
                    onPressed: () {
                      signIn();
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
            delay: 0.5,
            child: Circle(
                radius: circleSizeMedium,
                color: AppConstantsColor.yellow,
                x: 3,
                y: -1.2),
          ),
          ScaleAnimation(
            delay: 1,
            child: Circle(
                radius: circleSizeLarge,
                color: AppConstantsColor.purple,
                y: -1.9,
                x: -200),
          ),
          ScaleAnimation(
            delay: 1.5,
            child: Circle(
                radius: circleSizeSmall,
                color: AppConstantsColor.pink,
                y: -1.6,
                x: -2.4),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                alignment: Alignment(-0.5, -0.8),
                child: Text(
                  'Welcome\nBack',
                  style: AppThemes.headLine,
                ),
              ),
              inputForm(emailController, passController),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeAnimation(
                      delay: 3.1,
                      child: UnderLineText(
                        fun: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ));
                        },
                        color: AppConstantsColor.yellow,
                        style: AppThemes.yellowUnderLine,
                        text: 'Sign Up',
                      ),
                    ),
                    FadeAnimation(
                      delay: 3.1,
                      child: UnderLineText(
                        fun: () {},
                        color: AppConstantsColor.pink,
                        style: AppThemes.pinkUnderLine,
                        text: 'Forget Password',
                      ),
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
