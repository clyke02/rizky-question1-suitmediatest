import 'package:get/get.dart';
import 'package:rizky_question1_suitmediatest/app/routes/app_pages.dart';

class SecondScreenController extends GetxController {
  String name = '';
  Rx<String> selectedUser = 'Select User Name'.obs;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args != null && args is Map) {
      name = args['name'] ?? '';
    }
  }

  void changeName() {
    selectedUser.value = 'Jokowi';
  }

  void goToNextScreen() {
    Get.toNamed(Routes.THIRD_SCREEN);
  }
}
