import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sleek_button/src/state.dart';
import 'package:derived_colors/derived_colors.dart';
import 'package:sleek_button/src/theme.dart';
import 'package:flutter/foundation.dart';

part 'style.freezed.dart';

@freezed
abstract class SleekButtonStyle with _$SleekButtonStyle {
  static const defaultTransitionDuration = const Duration(milliseconds: 80);

  const factory SleekButtonStyle({
    @Default(SleekButtonStyle.defaultTransitionDuration)
        Duration transitionDuration,
    @required SleekButtonState<double> opacity,
    @required SleekButtonState<BoxDecoration> decoration,
    @required SleekButtonState<EdgeInsets> padding,
    @required SleekButtonState<TextStyle> textStyle,
    @required SleekButtonState<IconThemeData> iconTheme,
  }) = _SleekButtonStyle;

  factory SleekButtonStyle.flat({
    Color color,
    SleekButtonSize size = SleekButtonSize.normal,
    IconThemeData iconTheme,
    TextStyle textStyle,
    bool inverted = false,
    bool rounded = false,
    BuildContext context,
  }) {
    assert(inverted != null);
    assert(rounded != null);
    assert(color != null || context != null);
    assert(textStyle != null || context != null);
    assert(iconTheme != null || context != null);
    final buttonTheme = context != null ? SleekButtonTheme.of(context) : null;
    color = color ?? buttonTheme.fill;
    textStyle = size.toTextStyle(
      textStyle ?? buttonTheme.textStyle,
    );
    iconTheme = size.toIconTheme(
      iconTheme ?? buttonTheme.iconTheme,
    );
    var decoration = size.toDecoration(buttonTheme?.cornerRadius);
    if (rounded) {
      decoration =
          decoration.copyWith(borderRadius: BorderRadius.circular(10000));
    }
    final padding = size.toPadding(buttonTheme?.padding);
    final backgroundColor = inverted ? color.variants.invert : color;
    final foregroundColor = inverted ? color : color.variants.invert;
    return SleekButtonStyle(
      padding: SleekButtonState(enabled: padding),
      opacity: SleekButtonState(
        enabled: 1.0,
        disabled: 0.5,
      ),
      decoration: SleekButtonState(
        enabled: decoration.copyWith(color: backgroundColor),
        hover: decoration.copyWith(color: backgroundColor.subtle(0.03)),
        active: decoration.copyWith(color: backgroundColor.subtle()),
      ),
      textStyle: SleekButtonState(
        enabled: textStyle.copyWith(color: foregroundColor),
      ),
      iconTheme: SleekButtonState(
        enabled: iconTheme.copyWith(color: foregroundColor),
      ),
    );
  }

  factory SleekButtonStyle.outlined({
    Color color,
    SleekButtonSize size = SleekButtonSize.normal,
    IconThemeData iconTheme,
    TextStyle textStyle,
    bool inverted = false,
    bool rounded = false,
    double borderWidth,
    BuildContext context,
  }) {
    assert(inverted != null);
    assert(rounded != null);
    assert(color != null || context != null);
    assert(textStyle != null || context != null);
    assert(iconTheme != null || context != null);
    assert(borderWidth != null || context != null);
    final buttonTheme = context != null ? SleekButtonTheme.of(context) : null;
    color ??= buttonTheme.fill;
    textStyle = size.toTextStyle(
      textStyle ?? buttonTheme.textStyle,
    );
    iconTheme = size.toIconTheme(
      iconTheme ?? buttonTheme.iconTheme,
    );
    var decoration = size.toDecoration(buttonTheme?.cornerRadius);
    if (rounded) {
      decoration =
          decoration.copyWith(borderRadius: BorderRadius.circular(10000));
    }

    var padding = size.toPadding(buttonTheme?.padding);
    final foregroundColor = inverted ? color.variants.invert : color;
    final backgroundColor =
        inverted ? foregroundColor.withOpacity(0.0) : color.withOpacity(0.0);

    borderWidth ??= buttonTheme.borderWidth;
    decoration = decoration.copyWith(
      border: Border.all(
        color: foregroundColor,
        width: borderWidth,
      ),
    );

    padding = EdgeInsets.only(
      left: padding.left - borderWidth,
      right: padding.right - borderWidth,
      top: padding.top - borderWidth,
      bottom: padding.bottom - borderWidth,
    );

    return SleekButtonStyle(
      padding: SleekButtonState(enabled: padding),
      opacity: SleekButtonState(
        enabled: 1.0,
        disabled: 0.5,
      ),
      decoration: SleekButtonState(
        enabled: decoration.copyWith(color: backgroundColor),
        hover: decoration.copyWith(color: foregroundColor),
        active: decoration.copyWith(color: foregroundColor.subtle()),
      ),
      textStyle: SleekButtonState(
        enabled: textStyle.copyWith(color: foregroundColor),
        hover: textStyle.copyWith(
            color: inverted ? color : foregroundColor.variants.invert),
        active: textStyle.copyWith(
            color: inverted ? color : foregroundColor.variants.invert),
      ),
      iconTheme: SleekButtonState(
        enabled: iconTheme.copyWith(color: foregroundColor),
        hover: iconTheme.copyWith(
            color: inverted ? color : foregroundColor.variants.invert),
        active: iconTheme.copyWith(
            color: inverted ? color : foregroundColor.variants.invert),
      ),
    );
  }

  factory SleekButtonStyle.light({
    Color color,
    SleekButtonSize size = SleekButtonSize.normal,
    IconThemeData iconTheme,
    TextStyle textStyle,
    bool rounded = false,
    BuildContext context,
  }) {
    assert(rounded != null);
    assert(color != null || context != null);
    assert(textStyle != null || context != null);
    assert(iconTheme != null || context != null);
    final buttonTheme = context != null ? SleekButtonTheme.of(context) : null;
    color = color ?? buttonTheme.fill;
    textStyle = size.toTextStyle(
      textStyle ?? buttonTheme.textStyle,
    );
    iconTheme = size.toIconTheme(
      iconTheme ?? buttonTheme.iconTheme,
    );
    var decoration = size.toDecoration(buttonTheme?.cornerRadius);
    if (rounded) {
      decoration =
          decoration.copyWith(borderRadius: BorderRadius.circular(10000));
    }
    final padding = size.toPadding(buttonTheme?.padding);
    final backgroundColor = color.variants.light;
    final foregroundColor = color.variants.dark;
    return SleekButtonStyle(
      padding: SleekButtonState(enabled: padding),
      opacity: SleekButtonState(
        enabled: 1.0,
        disabled: 0.5,
      ),
      decoration: SleekButtonState(
        enabled: decoration.copyWith(color: backgroundColor),
        hover: decoration.copyWith(color: backgroundColor.subtle(0.03)),
        active: decoration.copyWith(color: backgroundColor.subtle()),
      ),
      textStyle: SleekButtonState(
        enabled: textStyle.copyWith(color: foregroundColor),
      ),
      iconTheme: SleekButtonState(
        enabled: iconTheme.copyWith(color: foregroundColor),
      ),
    );
  }
}

enum SleekButtonSize {
  normal,
  small,
  medium,
  big,
}

extension SleekButtonSizeExtensions on SleekButtonSize {
  EdgeInsets toPadding([double base = 16.0]) {
    base ??= 16.0;
    switch (this) {
      case SleekButtonSize.small:
        base *= 0.75;
        break;
      case SleekButtonSize.medium:
        base *= 1.25;
        break;
      case SleekButtonSize.big:
        base *= 1.5;
        break;
      default:
        base *= 1.0;
        break;
    }

    return EdgeInsets.symmetric(
      horizontal: base,
      vertical: base / 2,
    );
  }

  BoxDecoration toDecoration([double baseRadius = 4.0]) {
    baseRadius ??= 4.0;
    switch (this) {
      case SleekButtonSize.small:
        return BoxDecoration(
            borderRadius: BorderRadius.circular(baseRadius * 0.5));
      default:
        return BoxDecoration(borderRadius: BorderRadius.circular(baseRadius));
    }
  }

  TextStyle toTextStyle(TextStyle base) {
    switch (this) {
      case SleekButtonSize.small:
        return base.copyWith(fontSize: base.fontSize * 0.75);
      case SleekButtonSize.medium:
        return base.copyWith(fontSize: base.fontSize * 1.25);
      case SleekButtonSize.big:
        return base.copyWith(fontSize: base.fontSize * 1.5);
      default:
        return base;
    }
  }

  IconThemeData toIconTheme(IconThemeData base) {
    switch (this) {
      case SleekButtonSize.small:
        return base.copyWith(size: base.size * 0.5);
      case SleekButtonSize.medium:
        return base.copyWith(size: base.size * 1.25);
      case SleekButtonSize.big:
        return base.copyWith(size: base.size * 1.5);
      default:
        return base;
    }
  }
}
