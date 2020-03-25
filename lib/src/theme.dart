import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme.freezed.dart';

@freezed
abstract class SleekButtonThemeData with _$SleekButtonThemeData {
  const factory SleekButtonThemeData({
    @required double padding,
    @required TextStyle textStyle,
    @required double cornerRadius,
    @required IconThemeData iconTheme,
    @required Color fill,
    @required double borderWidth,
  }) = _SleekButtonThemeData;

  factory SleekButtonThemeData.fromTheme(ThemeData theme) {
    final textStyle = theme.textTheme.button;

    var iconTheme = theme.iconTheme ??
        IconThemeData(
          opacity: 1.0,
        );
    if (iconTheme.size == null) {
      iconTheme = iconTheme.copyWith(
        size: textStyle.fontSize * 1.2,
      );
    }

    return SleekButtonThemeData(
      fill: theme.accentColor,
      textStyle: textStyle,
      iconTheme: iconTheme,
      cornerRadius: 4.0,
      borderWidth: 1.0,
      padding: textStyle.fontSize * 1.3,
    );
  }

  factory SleekButtonThemeData.fallback() {
    final textStyle = TextStyle(fontSize: 12);
    return SleekButtonThemeData(
      fill: const Color(0xFF00d1b2),
      padding: textStyle.fontSize * 1.5,
      textStyle: textStyle,
      cornerRadius: 4.0,
      borderWidth: 1.0,
      iconTheme: IconThemeData(
        opacity: 1.0,
        size: textStyle.fontSize * 1.3,
      ),
    );
  }
}

class SleekButtonTheme extends InheritedWidget {
  final SleekButtonThemeData data;

  const SleekButtonTheme({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  static SleekButtonThemeData of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<SleekButtonTheme>();
    if (result != null) {
      return result.data;
    }

    final theme = Theme.of(context);
    if (theme != null) {
      return SleekButtonThemeData.fromTheme(theme);
    }

    return SleekButtonThemeData.fallback();
  }

  @override
  bool updateShouldNotify(SleekButtonTheme oldWidget) {
    return data != oldWidget.data;
  }
}
