import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:swift_cart/bhai/about_us.dart';
import 'package:swift_cart/bhai/address_screen.dart';

import 'package:swift_cart/firebase_options.dart';
import 'package:swift_cart/screens/auth_ui/sign_in_screen.dart';
import 'package:swift_cart/screens/auth_ui/sign_up_screen.dart';
import 'package:swift_cart/screens/auth_ui/splash_screen.dart';
import 'package:swift_cart/screens/auth_ui/welcome_screen.dart';
import 'package:swift_cart/screens/user_panel/main_screen.dart';

import 'bhai/notification_screen.dart';
import 'bhai/privacy_&_policy_screen.dart';
import 'bhai/share_screen.dart';
import 'bhai/support_screen.dart';
import 'bhai/wallet_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      home: const SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}

