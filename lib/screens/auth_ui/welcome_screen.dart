import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:swift_cart/controllers/google_sign_in_controller.dart';
import 'package:swift_cart/screens/auth_ui/sign_in_screen.dart';
import 'package:swift_cart/utils/app_constant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});


  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  final GoogleSignInController googleSignInController =
  Get.put(GoogleSignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appScendoryColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Welcome to My SwiftCart',
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Lottie.asset('assets/images/splash-icon.json'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: const Text(
                  'Happy Shopping',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              Material(
                child: Container(
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  decoration: BoxDecoration(
                    color: AppConstant.appScendoryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton.icon(
                    icon: Image.asset(
                      'assets/images/google.png',
                      width: Get.width / 12,
                      height: Get.height / 12,
                    ),
                    label: const Text(
                      'Sign in with google',
                      style: TextStyle(color: AppConstant.appTextColor),
                    ),
                    onPressed: () {
                      googleSignInController.signInWithGoogle();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              Material(
                child: Container(
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  decoration: BoxDecoration(
                    color: AppConstant.appScendoryColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.email,
                      color: AppConstant.appTextColor,
                    ),
                    label: const Text(
                      'Sign in with email',
                      style: TextStyle(color: AppConstant.appTextColor),
                    ),
                    onPressed: () {
                    Get.to(()=>const SignInScreen());
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
