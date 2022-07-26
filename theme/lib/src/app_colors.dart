import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.green,
    required this.green2,
    required this.green3,
    required this.green4,
    required this.chartBg,
    required this.grey,
    required this.grey2,
    required this.black,
    required this.red,
    required this.unfocusedInputBorderColor,
  });

  factory AppColorsData.light() => const AppColorsData(
        green: Color(0xFF48B8A1),
        green2: Color(0xFF319A86),
        green3: Color(0xFF46DBC0),
        green4: Color(0xFF67968c),
        chartBg: Color(0xFFf5fafa),
        grey: Color(0xFF535E5C),
        grey2: Color(0xFFadacac),
        black: Color(0xFF2f3131),
        red: Color(0xFFf54842),
        unfocusedInputBorderColor: Color(0xFFBDBDBD),
      );

  final Color green;
  final Color green2;
  final Color green3;
  final Color green4;
  final Color chartBg;
  final Color grey;
  final Color grey2;
  final Color black;
  final Color red;
  final Color unfocusedInputBorderColor;

  @override
  List<Object?> get props => [
        green.named('green'),
        green2.named('green2'),
        green3.named('green3'),
        green4.named('green4'),
        chartBg.named('chartBg'),
        grey.named('grey'),
        grey2.named('grey2'),
        black.named('black'),
        red.named('red'),
        unfocusedInputBorderColor.named('unfocusedInputBorderColor'),
      ];
}
