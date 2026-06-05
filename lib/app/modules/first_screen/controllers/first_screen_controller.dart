import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rizky_question1_suitmediatest/app/routes/app_pages.dart';

class FirstScreenController extends GetxController {
  final nameController = TextEditingController();
  final palindromeController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    palindromeController.dispose();
    super.onClose();
  }

  void checkPalindrome() {
    String text = palindromeController.text;
    String reversedText = text.split('').reversed.join('');
    if (text == reversedText) {
      Get.snackbar('Palindrome Check', 'The text is a palindrome!');
    } else {
      Get.snackbar(
        backgroundColor: Colors.red,
        colorText: Colors.white,
        'Palindrome Check',
        'The text is not a palindrome.',
      );
    }
  }

  void goToNextScreen() {
    Get.toNamed(Routes.SECOND_SCREEN);
  }
}
