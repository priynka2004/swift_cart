import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:swift_cart/models/user_model.dart';
import 'package:swift_cart/utils/app_constant.dart';

class SignUpController extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  var isPasswordVisible = false.obs;

  Future<UserCredential?> signUpMethod(
    String userName,
    String userEmail,
    String userPhone,
    String userCity,
    String userPassword,
    String userDeviceToken,
  ) async {
    try {
      EasyLoading.show(status: "Please wait..");
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );
      await userCredential.user!.sendEmailVerification();
      UserModel userModel = UserModel(
        uId: userCredential.user!.uid,
        username: userName,
        email: userEmail,
        phone: userPhone,
        userImg: '',
        userDeviceToken: userDeviceToken,
        country: '',
        userAddress: '',
        street: '',
        isAdmin: false,
        isActive: true,
        createdOn: DateTime.now(),
        city: '',
      );
      firestore.collection('users').doc(userCredential.user!.uid).set(
            userModel.toMap(),
          );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      EasyLoading.dismiss();
      Get.snackbar(
        "Error",
        "$e",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AppConstant.appScendoryColor,
        colorText: AppConstant.appTextColor,
      );
    }
  }
}
