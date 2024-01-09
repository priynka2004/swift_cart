import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:swift_cart/screens/auth_ui/welcome_screen.dart';
import 'package:swift_cart/utils/app_constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppConstant.appScendoryColor,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: AppConstant.appMainColor,
        title: Text(AppConstant.appMainName),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () async {
              GoogleSignIn googleSignIn = GoogleSignIn();
              FirebaseAuth auth = FirebaseAuth.instance;
              await auth.signOut();
              await googleSignIn.signOut();
              Get.offAll(
                () => const WelcomeScreen(),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.logout,
              ),
            ),
          )
        ],
      ),
    );
  }
}
