import 'package:dio/dio.dart';

import '../models/user_model.dart';

class ThirdScreenService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://reqres.in',
      headers: {'x-api-key': 'free_user_3EiScE4mvGCTUOotFWPZ1jJxC1R'},
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future<UserListResponse> getUsers({int page = 1}) async {
    final response = await _dio.get('/api/users', queryParameters: {'page': 3});
    return UserListResponse.fromJson(response.data as Map<String, dynamic>);
  }
}
