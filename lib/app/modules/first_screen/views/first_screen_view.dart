import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
        child: Center(child: Text('FirstScreenView')),
      ),
    );
  }
}
