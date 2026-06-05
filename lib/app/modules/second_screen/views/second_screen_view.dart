import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rizky_question1_suitmediatest/app/widgets/custom_button.dart';

import '../controllers/second_screen_controller.dart';

class SecondScreenView extends GetView<SecondScreenController> {
  const SecondScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, size: 20),
          color: const Color(0xFF4B3FE4),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Second Screen',
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(height: 1, thickness: 1, color: Color(0xFFE2E3E4)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              controller.name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF04021D),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                  child: Obx(
                    () => Text(
                      controller.selectedUser.value,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF04021D),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CustomButton(
              text: 'Choose a User',
              onPressed: () {
                controller.changeName();
              },
            ),
          ],
        ),
      ),
    );
  }
}
