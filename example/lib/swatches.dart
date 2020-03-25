import 'package:flutter/material.dart';

class Swatch {
  final Color primary;
  final Color info;
  final Color link;
  final Color danger;
  final Color success;
  final Color warning;
  final Color dark;
  final Color light;
  final Color black;
  final Color white;

  const Swatch({
    @required this.primary,
    @required this.info,
    @required this.link,
    @required this.danger,
    @required this.success,
    @required this.warning,
    @required this.dark,
    @required this.light,
    @required this.white,
    @required this.black,
  });
}

final sleek = Swatch(
  primary: const Color(0xFF5D3BE8),
  info: const Color(0xFF3C39EE),
  link: const Color(0xFF396BEE),
  danger: const Color(0xFFEE394E),
  success: const Color(0xFF3AC281),
  warning: const Color(0xFFFFC369),
  dark: const Color(0xFF323232),
  light: const Color(0xFFEFEFEF),
  white: const Color(0xFFFCFCFC),
  black: const Color(0xFF090909),
);

final bulma = Swatch(
  primary: HSLColor.fromAHSL(1.0, 171.0, 1.0, 0.41).toColor(),
  info: HSLColor.fromAHSL(1.0, 204.0, 0.86, 0.53).toColor(),
  link: HSLColor.fromAHSL(1.0, 217.0, 0.71, 0.53).toColor(),
  danger: HSLColor.fromAHSL(1.0, 348.0, 1.0, 0.61).toColor(),
  success: HSLColor.fromAHSL(1.0, 141.0, 0.71, 0.48).toColor(),
  warning: HSLColor.fromAHSL(1.0, 48.0, 1.0, 0.67).toColor(),
  dark: HSLColor.fromAHSL(1.0, 0, 0.0, 0.21).toColor(),
  light: HSLColor.fromAHSL(1.0, 0.0, 0.0, 0.96).toColor(),
  white: HSLColor.fromAHSL(1.0, 0.0, 0.0, 1.0).toColor(),
  black: HSLColor.fromAHSL(1.0, 0.0, 0.0, 0.04).toColor(),
);
