class UserModel {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  UserModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int?,
        email: json['email'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        avatar: json['avatar'] as String?,
      );
}

class UserListResponse {
  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<UserModel>? data;

  UserListResponse({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
  });

  factory UserListResponse.fromJson(Map<String, dynamic> json) =>
      UserListResponse(
        page: json['page'] as int?,
        perPage: json['per_page'] as int?,
        total: json['total'] as int?,
        totalPages: json['total_pages'] as int?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}
