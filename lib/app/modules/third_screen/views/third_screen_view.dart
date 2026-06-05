import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/third_screen_controller.dart';
import 'widgets/third_screen_list_builder.dart';

class ThirdScreenView extends GetView<ThirdScreenController> {
  const ThirdScreenView({super.key});

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
          'Third Screen',
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
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  controller.errorMessage.value,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: controller.fetchUsers,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }
        if (controller.users.isEmpty) {
          return const Center(child: Text('No users found.'));
        }
        return RefreshIndicator(
          onRefresh: controller.fetchUsers,
          child: ThirdScreenListBuilder(items: controller.users),
        );
      }),
    );
  }
}
