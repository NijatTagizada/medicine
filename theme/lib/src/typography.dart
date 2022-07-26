import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

import 'named.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.sp8,
    required this.sp10,
    required this.sp11,
    required this.sp12,
    required this.sp13,
    required this.sp14,
    required this.sp15,
    required this.sp16,
    required this.sp17,
    required this.sp18,
    required this.sp20,
    required this.sp21,
    required this.sp22,
    required this.sp24,
    required this.sp26,
  });

  factory AppTypographyData.regular() => AppTypographyData(
        sp8: TextStyle(
          fontSize: 8.w,
          fontWeight: FontWeight.w400,
        ),
        sp10: TextStyle(
          fontSize: 10.w,
          fontWeight: FontWeight.w400,
        ),
        sp11: TextStyle(
          fontSize: 11.w,
          fontWeight: FontWeight.w400,
        ),
        sp12: TextStyle(
          fontSize: 12.w,
          fontWeight: FontWeight.w400,
        ),
        sp13: TextStyle(
          fontSize: 13.w,
          fontWeight: FontWeight.w400,
        ),
        sp14: TextStyle(
          fontSize: 14.w,
          fontWeight: FontWeight.w400,
        ),
        sp15: TextStyle(
          fontSize: 15.w,
          fontWeight: FontWeight.w400,
        ),
        sp16: TextStyle(
          fontSize: 16.w,
          fontWeight: FontWeight.w400,
        ),
        sp17: TextStyle(
          fontSize: 17.w,
          fontWeight: FontWeight.w400,
        ),
        sp18: TextStyle(
          fontSize: 18.w,
          fontWeight: FontWeight.w400,
        ),
        sp20: TextStyle(
          fontSize: 20.w,
          fontWeight: FontWeight.w400,
        ),
        sp21: TextStyle(
          fontSize: 21.w,
          fontWeight: FontWeight.w400,
        ),
        sp24: TextStyle(
          fontSize: 24.w,
          fontWeight: FontWeight.w400,
        ),
        sp22: TextStyle(
          fontSize: 22.w,
          fontWeight: FontWeight.w400,
        ),
        sp26: TextStyle(
          fontSize: 26.w,
          fontWeight: FontWeight.w400,
        ),
      );

  final TextStyle sp8;
  final TextStyle sp10;
  final TextStyle sp11;
  final TextStyle sp12;
  final TextStyle sp13;
  final TextStyle sp14;
  final TextStyle sp15;
  final TextStyle sp16;
  final TextStyle sp17;
  final TextStyle sp18;
  final TextStyle sp20;
  final TextStyle sp21;
  final TextStyle sp22;
  final TextStyle sp24;
  final TextStyle sp26;

  @override
  List<Object?> get props => [
        sp8.named('sp8'),
        sp10.named('sp10'),
        sp11.named('sp11'),
        sp12.named('sp12'),
        sp13.named('sp13'),
        sp14.named('sp14'),
        sp15.named('sp15'),
        sp16.named('sp16'),
        sp17.named('sp17'),
        sp18.named('sp18'),
        sp20.named('sp20'),
        sp21.named('sp21'),
        sp22.named('sp22'),
        sp24.named('sp24'),
        sp26.named('sp26'),
      ];
}
