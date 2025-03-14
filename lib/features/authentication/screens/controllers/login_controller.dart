import 'package:bijou/common/widget/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  final isLoading = false.obs;
  final isPasswordHidden = true.obs;

  final _auth = FirebaseAuth.instance;

  @override
  void onClose() {
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    super.onClose();
  }

  Future<void> loginUser() async {
    try {
      isLoading.value = true;
      await _auth.signInWithEmailAndPassword(
        email: email.text.trim(),
        password: password.text.trim(),
      );

      Get.offAll(() => HomeScreen());
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'Không tìm thấy người dùng':
          break;
        case 'Sai mat khau':
          break;
        case 'Email khong hop le':
          break;
        case 'Tai khoan da bi vo hieu hoa':
          break;
      }
    }
  }
}
