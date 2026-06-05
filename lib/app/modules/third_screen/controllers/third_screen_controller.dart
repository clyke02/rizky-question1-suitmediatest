import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../models/user_model.dart';
import '../services/third_screen_service.dart';

class ThirdScreenController extends GetxController {
  final _service = ThirdScreenService();

  int _totalPages = 1;

  late final PagingController<int, UserModel> pagingController =
      PagingController<int, UserModel>(
    getNextPageKey: (state) {
      final loadedPages = state.pages?.length ?? 0;
      if (loadedPages >= _totalPages) return null;
      return state.nextIntPageKey;
    },
    fetchPage: (pageKey) async {
      final response = await _service.getUsers(page: pageKey);
      _totalPages = response.totalPages ?? 1;
      return response.data ?? [];
    },
  );

  @override
  void onClose() {
    pagingController.dispose();
    super.onClose();
  }

  void refreshList() => pagingController.refresh();
}
