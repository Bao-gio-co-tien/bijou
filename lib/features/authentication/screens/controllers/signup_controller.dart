import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  final userName = TextEditingController();

  final isLoading = false.obs;
  final isPasswordHidden = true.obs;

  @override
  void onClose() {
    email.dispose();
    firstName.dispose();
    lastName.dispose();
    userName.dispose();
    phoneNumber.dispose();
    password.dispose();
    super.onClose();
  }

  // Future<void> createUser(UserModel user) async {
  //   try {
  //     isLoading.value = true;
  //     await userRepo.createUser(user);
  //     Get.to(() => const VerifyEmailPage());
  //   } catch (e) {
  //     print("Error in createUser: ${e.toString()}");
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }
}