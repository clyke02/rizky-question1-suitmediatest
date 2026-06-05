import 'package:get/get.dart';

import '../models/user_model.dart';
import '../services/third_screen_service.dart';

class ThirdScreenController extends GetxController {
  final _service = ThirdScreenService();

  final users = <UserModel>[].obs;
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading.value = true;
      errorMessage.value = '';
      final response = await _service.getUsers();
      users.assignAll(response.data ?? []);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
