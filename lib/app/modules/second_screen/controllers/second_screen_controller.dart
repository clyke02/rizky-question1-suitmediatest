import 'package:get/get.dart';

class SecondScreenController extends GetxController {
  String name = '';
  String selectedUser = 'Select User Name';

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments;
    if (args != null && args is Map) {
      name = args['name'] ?? '';
    }
  }
}
