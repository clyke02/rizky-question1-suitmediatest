import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:lottie/lottie.dart';

import '../../models/user_model.dart';
import 'third_screen_list_item.dart';
import 'third_screen_shimmer.dart';

class ThirdScreenListBuilder extends StatelessWidget {
  const ThirdScreenListBuilder({super.key, required this.pagingController});

  final PagingController<int, UserModel> pagingController;

  @override
  Widget build(BuildContext context) {
    return PagingListener(
      controller: pagingController,
      builder: (context, state, fetchNextPage) =>
          PagedListView<int, UserModel>.separated(
            state: state,
            fetchNextPage: fetchNextPage,
            separatorBuilder: (_, __) => const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFE2E3E4),
            ),
            builderDelegate: PagedChildBuilderDelegate<UserModel>(
              itemBuilder: (_, user, __) => ThirdScreenListItem(
                firstName: user.firstName,
                lastName: user.lastName,
                email: user.email,
                avatar: user.avatar,
                onTap: () {
                  final fullName =
                      '${user.firstName ?? ''} ${user.lastName ?? ''}'.trim();
                  Get.back(result: fullName);
                },
              ),
              newPageProgressIndicatorBuilder: (_) =>
                  const ThirdScreenShimmer(itemCount: 2),
              firstPageProgressIndicatorBuilder: (_) =>
                  const ThirdScreenShimmer(),
              noItemsFoundIndicatorBuilder: (_) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Lottie.asset('assets/animations/empty_animation.json'),
                    Text(
                      'No users found',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
