import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/theme/theme.dart';
import 'login_password.dart';

class LoginPhone extends StatelessWidget {
  const LoginPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BijouTheme.backgroundColor,
      body: Container(
        padding: BijouTheme.authenticationPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 231,),
            const Text('Chọn một mật khẩu', style: BijouTheme.heading,),
            const SizedBox(height: 20,),
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                fillColor: BijouTheme.boxColor,
                filled: true,
                hintText: 'Mật khẩu',
                hintStyle: BijouTheme.textBox2,
                // prefixIcon: IconButton(onPressed: () , icon: Icon()),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () => Get.to(() => const LoginPassword()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: BijouTheme.textBoxColor1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child: const Text('Su dung email thay cho cach nay', style: BijouTheme.textBox2,)
            ),
            const SizedBox(height: 250,),
            ElevatedButton(
                onPressed: () => Get.to(() => const LoginPassword()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: BijouTheme.textBoxColor1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('Tiếp tục', style: BijouTheme.textBox2,)
            )
          ],
        ),
      ),
    );
  }
}