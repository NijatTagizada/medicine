import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    return AppBar(
      centerTitle: false,
      title: Text(
        title,
        style: appTheme.typography.sp20.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      leadingWidth: 45.w,
      automaticallyImplyLeading: false,
      titleSpacing: 21.w,
      backgroundColor: appTheme.colors.green2,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
