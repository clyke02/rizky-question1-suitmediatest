import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import 'third_screen_list_item.dart';

class ThirdScreenListBuilder extends StatelessWidget {
  const ThirdScreenListBuilder({super.key, required this.items});

  final List<UserModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) =>
          const Divider(height: 1, thickness: 1, color: Color(0xFFE2E3E4)),
      itemBuilder: (_, index) {
        final user = items[index];
        return ThirdScreenListItem(
          firstName: user.firstName,
          lastName: user.lastName,
          email: user.email,
          avatar: user.avatar,
        );
      },
    );
  }
}
