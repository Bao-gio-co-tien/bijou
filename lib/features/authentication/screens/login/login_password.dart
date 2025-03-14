import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/theme/theme.dart';

class LoginPassword extends StatelessWidget {
  const LoginPassword({super.key});

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
            const SizedBox(height: 278,),
            ElevatedButton(
                onPressed: () => Get.to(() => const ()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: BijouTheme.textBoxColor1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('Tiếp tục', style: BijouTheme.textBox2,))
          ],
        ),
      ),
    );
  }
}