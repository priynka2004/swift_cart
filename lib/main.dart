import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:swift_cart/screens/auth_ui/sign_in_screen.dart';
import 'package:swift_cart/screens/auth_ui/sign_up_screen.dart';
import 'package:swift_cart/screens/auth_ui/splash_screen.dart';
import 'package:swift_cart/screens/user_panel/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}

