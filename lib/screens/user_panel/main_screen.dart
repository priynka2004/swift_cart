import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:swift_cart/screens/auth_ui/welcome_screen.dart';
import 'package:swift_cart/screens/user_panel/all_categories_screen.dart';
import 'package:swift_cart/utils/app_constant.dart';
import 'package:swift_cart/widgets/banner_widget.dart';
import 'package:swift_cart/widgets/category_widget.dart';
import 'package:swift_cart/widgets/drawer_widget.dart';
import 'package:swift_cart/widgets/flash_sale_widget.dart';
import 'package:swift_cart/widgets/heading_widget.dart';

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
        iconTheme: const IconThemeData(
          color: AppConstant.appTextColor,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: AppConstant.appScendoryColor,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: AppConstant.appMainColor,
        title: Text(
          AppConstant.appMainName,
          style: const TextStyle(
            color: AppConstant.appTextColor,
          ),
        ),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: Get.height / 90.0,
              ),
              const BannerWidget(),
              HeadingWidget(
                headingTitle: 'Category',
                headingSubTitle: 'According to your budget',
                onTap: () {},
                buttonText: 'See More >',
              ),
              const CategoriesWidget(),
              HeadingWidget(
                headingTitle: 'Flash Sale',
                headingSubTitle: 'According to your budget',
                onTap: () => Get.to(
                  () => const AllCategoriesScreen(),
                ),
                buttonText: 'See More >',
              ),
              const FlashSaleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
