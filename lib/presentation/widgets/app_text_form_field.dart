import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:theme/theme.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    this.controller,
    this.label,
    this.hint,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final TextInputType inputType;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    final defaultBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: appTheme.colors.unfocusedInputBorderColor,
      ),
      borderRadius: BorderRadius.circular(4.w),
    );

    final focusBorder = defaultBorder.copyWith(
      borderSide: BorderSide(
        color: appTheme.colors.green,
      ),
    );

    final errorBorder = defaultBorder.copyWith(
      borderSide: BorderSide(
        color: appTheme.colors.red,
      ),
    );

    return TextFormField(
      controller: widget.controller,
      cursorColor: appTheme.colors.grey2,
      buildCounter: null,
      keyboardType: widget.inputType,
      style: appTheme.typography.sp16.copyWith(
        color: appTheme.colors.black,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 18.h,
          horizontal: 20.w,
        ),
        hintText: widget.hint,
        counter: null,
        hintStyle: appTheme.typography.sp15.copyWith(
          color: appTheme.colors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: defaultBorder,
        enabledBorder: defaultBorder,
        focusedBorder: focusBorder,
        errorBorder: errorBorder,
        labelText: widget.label,
        labelStyle: appTheme.typography.sp15.copyWith(
          color: appTheme.colors.grey,
          fontWeight: FontWeight.w400,
        ),
        floatingLabelStyle: appTheme.typography.sp15.copyWith(
          color: appTheme.colors.black,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: appTheme.typography.sp11.copyWith(
          color: appTheme.colors.red,
        ),
      ),
    );
  }
}
