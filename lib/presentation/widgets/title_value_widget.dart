import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

class TitleValueWidget extends StatelessWidget {
  const TitleValueWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: appTheme.typography.sp15.copyWith(
            color: appTheme.colors.green2,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 3.h),
        Text(
          value,
          style: appTheme.typography.sp15.copyWith(
            color: appTheme.colors.black,
          ),
        ),
      ],
    );
  }
}
