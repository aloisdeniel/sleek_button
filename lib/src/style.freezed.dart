// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'style.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SleekButtonStyleTearOff {
  const _$SleekButtonStyleTearOff();

  _SleekButtonStyle call(
      {Duration transitionDuration = SleekButtonStyle.defaultTransitionDuration,
      @required SleekButtonState<double> opacity,
      @required SleekButtonState<BoxDecoration> decoration,
      @required SleekButtonState<EdgeInsets> padding,
      @required SleekButtonState<TextStyle> textStyle,
      @required SleekButtonState<IconThemeData> iconTheme}) {
    return _SleekButtonStyle(
      transitionDuration: transitionDuration,
      opacity: opacity,
      decoration: decoration,
      padding: padding,
      textStyle: textStyle,
      iconTheme: iconTheme,
    );
  }
}

// ignore: unused_element
const $SleekButtonStyle = _$SleekButtonStyleTearOff();

mixin _$SleekButtonStyle {
  Duration get transitionDuration;
  SleekButtonState<double> get opacity;
  SleekButtonState<BoxDecoration> get decoration;
  SleekButtonState<EdgeInsets> get padding;
  SleekButtonState<TextStyle> get textStyle;
  SleekButtonState<IconThemeData> get iconTheme;

  $SleekButtonStyleCopyWith<SleekButtonStyle> get copyWith;
}

abstract class $SleekButtonStyleCopyWith<$Res> {
  factory $SleekButtonStyleCopyWith(
          SleekButtonStyle value, $Res Function(SleekButtonStyle) then) =
      _$SleekButtonStyleCopyWithImpl<$Res>;
  $Res call(
      {Duration transitionDuration,
      SleekButtonState<double> opacity,
      SleekButtonState<BoxDecoration> decoration,
      SleekButtonState<EdgeInsets> padding,
      SleekButtonState<TextStyle> textStyle,
      SleekButtonState<IconThemeData> iconTheme});
}

class _$SleekButtonStyleCopyWithImpl<$Res>
    implements $SleekButtonStyleCopyWith<$Res> {
  _$SleekButtonStyleCopyWithImpl(this._value, this._then);

  final SleekButtonStyle _value;
  // ignore: unused_field
  final $Res Function(SleekButtonStyle) _then;

  @override
  $Res call({
    Object transitionDuration = freezed,
    Object opacity = freezed,
    Object decoration = freezed,
    Object padding = freezed,
    Object textStyle = freezed,
    Object iconTheme = freezed,
  }) {
    return _then(_value.copyWith(
      transitionDuration: transitionDuration == freezed
          ? _value.transitionDuration
          : transitionDuration as Duration,
      opacity: opacity == freezed
          ? _value.opacity
          : opacity as SleekButtonState<double>,
      decoration: decoration == freezed
          ? _value.decoration
          : decoration as SleekButtonState<BoxDecoration>,
      padding: padding == freezed
          ? _value.padding
          : padding as SleekButtonState<EdgeInsets>,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle as SleekButtonState<TextStyle>,
      iconTheme: iconTheme == freezed
          ? _value.iconTheme
          : iconTheme as SleekButtonState<IconThemeData>,
    ));
  }
}

abstract class _$SleekButtonStyleCopyWith<$Res>
    implements $SleekButtonStyleCopyWith<$Res> {
  factory _$SleekButtonStyleCopyWith(
          _SleekButtonStyle value, $Res Function(_SleekButtonStyle) then) =
      __$SleekButtonStyleCopyWithImpl<$Res>;
  @override
  $Res call(
      {Duration transitionDuration,
      SleekButtonState<double> opacity,
      SleekButtonState<BoxDecoration> decoration,
      SleekButtonState<EdgeInsets> padding,
      SleekButtonState<TextStyle> textStyle,
      SleekButtonState<IconThemeData> iconTheme});
}

class __$SleekButtonStyleCopyWithImpl<$Res>
    extends _$SleekButtonStyleCopyWithImpl<$Res>
    implements _$SleekButtonStyleCopyWith<$Res> {
  __$SleekButtonStyleCopyWithImpl(
      _SleekButtonStyle _value, $Res Function(_SleekButtonStyle) _then)
      : super(_value, (v) => _then(v as _SleekButtonStyle));

  @override
  _SleekButtonStyle get _value => super._value as _SleekButtonStyle;

  @override
  $Res call({
    Object transitionDuration = freezed,
    Object opacity = freezed,
    Object decoration = freezed,
    Object padding = freezed,
    Object textStyle = freezed,
    Object iconTheme = freezed,
  }) {
    return _then(_SleekButtonStyle(
      transitionDuration: transitionDuration == freezed
          ? _value.transitionDuration
          : transitionDuration as Duration,
      opacity: opacity == freezed
          ? _value.opacity
          : opacity as SleekButtonState<double>,
      decoration: decoration == freezed
          ? _value.decoration
          : decoration as SleekButtonState<BoxDecoration>,
      padding: padding == freezed
          ? _value.padding
          : padding as SleekButtonState<EdgeInsets>,
      textStyle: textStyle == freezed
          ? _value.textStyle
          : textStyle as SleekButtonState<TextStyle>,
      iconTheme: iconTheme == freezed
          ? _value.iconTheme
          : iconTheme as SleekButtonState<IconThemeData>,
    ));
  }
}

class _$_SleekButtonStyle
    with DiagnosticableTreeMixin
    implements _SleekButtonStyle {
  const _$_SleekButtonStyle(
      {this.transitionDuration = SleekButtonStyle.defaultTransitionDuration,
      @required this.opacity,
      @required this.decoration,
      @required this.padding,
      @required this.textStyle,
      @required this.iconTheme})
      : assert(transitionDuration != null),
        assert(opacity != null),
        assert(decoration != null),
        assert(padding != null),
        assert(textStyle != null),
        assert(iconTheme != null);

  @JsonKey(defaultValue: SleekButtonStyle.defaultTransitionDuration)
  @override
  final Duration transitionDuration;
  @override
  final SleekButtonState<double> opacity;
  @override
  final SleekButtonState<BoxDecoration> decoration;
  @override
  final SleekButtonState<EdgeInsets> padding;
  @override
  final SleekButtonState<TextStyle> textStyle;
  @override
  final SleekButtonState<IconThemeData> iconTheme;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SleekButtonStyle(transitionDuration: $transitionDuration, opacity: $opacity, decoration: $decoration, padding: $padding, textStyle: $textStyle, iconTheme: $iconTheme)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SleekButtonStyle'))
      ..add(DiagnosticsProperty('transitionDuration', transitionDuration))
      ..add(DiagnosticsProperty('opacity', opacity))
      ..add(DiagnosticsProperty('decoration', decoration))
      ..add(DiagnosticsProperty('padding', padding))
      ..add(DiagnosticsProperty('textStyle', textStyle))
      ..add(DiagnosticsProperty('iconTheme', iconTheme));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SleekButtonStyle &&
            (identical(other.transitionDuration, transitionDuration) ||
                const DeepCollectionEquality()
                    .equals(other.transitionDuration, transitionDuration)) &&
            (identical(other.opacity, opacity) ||
                const DeepCollectionEquality()
                    .equals(other.opacity, opacity)) &&
            (identical(other.decoration, decoration) ||
                const DeepCollectionEquality()
                    .equals(other.decoration, decoration)) &&
            (identical(other.padding, padding) ||
                const DeepCollectionEquality()
                    .equals(other.padding, padding)) &&
            (identical(other.textStyle, textStyle) ||
                const DeepCollectionEquality()
                    .equals(other.textStyle, textStyle)) &&
            (identical(other.iconTheme, iconTheme) ||
                const DeepCollectionEquality()
                    .equals(other.iconTheme, iconTheme)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transitionDuration) ^
      const DeepCollectionEquality().hash(opacity) ^
      const DeepCollectionEquality().hash(decoration) ^
      const DeepCollectionEquality().hash(padding) ^
      const DeepCollectionEquality().hash(textStyle) ^
      const DeepCollectionEquality().hash(iconTheme);

  @override
  _$SleekButtonStyleCopyWith<_SleekButtonStyle> get copyWith =>
      __$SleekButtonStyleCopyWithImpl<_SleekButtonStyle>(this, _$identity);
}

abstract class _SleekButtonStyle implements SleekButtonStyle {
  const factory _SleekButtonStyle(
          {Duration transitionDuration,
          @required SleekButtonState<double> opacity,
          @required SleekButtonState<BoxDecoration> decoration,
          @required SleekButtonState<EdgeInsets> padding,
          @required SleekButtonState<TextStyle> textStyle,
          @required SleekButtonState<IconThemeData> iconTheme}) =
      _$_SleekButtonStyle;

  @override
  Duration get transitionDuration;
  @override
  SleekButtonState<double> get opacity;
  @override
  SleekButtonState<BoxDecoration> get decoration;
  @override
  SleekButtonState<EdgeInsets> get padding;
  @override
  SleekButtonState<TextStyle> get textStyle;
  @override
  SleekButtonState<IconThemeData> get iconTheme;
  @override
  _$SleekButtonStyleCopyWith<_SleekButtonStyle> get copyWith;
}
