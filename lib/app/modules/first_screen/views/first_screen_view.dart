import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';
import '../controllers/first_screen_controller.dart';

class FirstScreenView extends GetView<FirstScreenController> {
  const FirstScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_background1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/img_profile.png',
              width: 116,
              height: 116,
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  CustomTextField(
                    controller: controller.nameController,
                    hintText: 'Name',
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    controller: controller.palindromeController,
                    hintText: 'Palindrome',
                  ),
                  const SizedBox(height: 45),
                  CustomButton(
                    text: 'CHECK',
                    onPressed: () {
                      controller.checkPalindrome();
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomButton(text: 'NEXT', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
