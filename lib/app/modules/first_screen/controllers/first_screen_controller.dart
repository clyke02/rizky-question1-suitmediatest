import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreenController extends GetxController {
  final nameController = TextEditingController();
  final palindromeController = TextEditingController();

  @override
  void onClose() {
    nameController.dispose();
    palindromeController.dispose();
    super.onClose();
  }
}
