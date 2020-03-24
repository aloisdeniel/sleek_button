import 'package:flutter/material.dart';

class SleekButtonState<T> {
  final T enabled;
  final T disabled;
  final T hover;
  final T focus;
  final T active;

  const SleekButtonState({
    @required this.enabled,
    T disabled,
    T hover,
    T active,
    T focus,
  })  : this.disabled = disabled ?? enabled,
        this.active = active ?? enabled,
        this.hover = hover ?? (active ?? enabled),
        this.focus = focus ?? (hover ?? (active ?? enabled));

  T value({
    bool isDisabled,
    bool isActive,
    bool isHover,
    bool isFocused,
  }) {
    if (isDisabled == true) return disabled;
    if (isActive == true) return active;
    if (isHover == true) return hover;
    if (isFocused == true) return focus;
    return enabled;
  }
}
