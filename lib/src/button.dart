import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek_button/src/style.dart';

class SleekButton extends StatefulWidget {
  // The visual style of the button.
  final SleekButtonStyle style;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.child}
  final Widget child;

  /// Called when the user taps this button.
  final GestureTapCallback onTap;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode focusNode;

  const SleekButton({
    Key key,
    this.style,
    this.child,
    this.onTap,
    this.autofocus = false,
    this.focusNode,
  })  : assert(autofocus != null),
        super(key: key);

  @override
  _SleekButtonState createState() => _SleekButtonState();
}

class _SleekButtonState extends State<SleekButton> {
  bool isActive = false;
  bool isHover = false;
  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    final style = widget.style ?? SleekButtonStyle.flat(context: context);

    bool isDisabled = widget.onTap == null;
    var padding = style.padding?.value(
      isActive: isActive,
      isDisabled: isDisabled,
      isHover: isHover,
      isFocused: isFocused,
    );

    // If direct child is an icon, we use same padding everywhere to
    // make the button a square.
    if (widget.child is Icon) {
      padding = EdgeInsets.all(padding.top);
    }

    return Semantics(
      container: true,
      button: true,
      enabled: !isDisabled,
      child: Focus(
        focusNode: widget.focusNode,
        canRequestFocus: !isDisabled,
        onFocusChange: (v) => this.setState(() => this.isFocused = true),
        autofocus: widget.autofocus,
        child: MouseRegion(
          onEnter: (_) => this.setState(() => this.isHover = true),
          onExit: (_) => this.setState(() => this.isHover = false),
          child: GestureDetector(
            onTapDown: (_) => this.setState(() => this.isActive = true),
            onTapUp: (_) => this.setState(() => this.isActive = false),
            onTapCancel: () => this.setState(() => this.isActive = false),
            onTap: widget.onTap,
            behavior: HitTestBehavior.opaque,
            child: AnimatedOpacity(
              duration: style.transitionDuration,
              opacity: style.opacity?.value(
                    isActive: isActive,
                    isDisabled: isDisabled,
                    isHover: isHover,
                    isFocused: isFocused,
                  ) ??
                  1.0,
              child: AnimatedContainer(
                duration: style.transitionDuration,
                decoration: style.decoration?.value(
                  isActive: isActive,
                  isDisabled: isDisabled,
                  isHover: isHover,
                  isFocused: isFocused,
                ),
                padding: padding,
                child: AnimatedDefaultTextStyle(
                  child: IconTheme(
                    data: style.iconTheme?.value(
                      isActive: isActive,
                      isDisabled: isDisabled,
                      isHover: isHover,
                      isFocused: isFocused,
                    ),
                    child: widget.child,
                  ),
                  style: style.textStyle?.value(
                    isActive: isActive,
                    isDisabled: isDisabled,
                    isHover: isHover,
                    isFocused: isFocused,
                  ),
                  duration: style.transitionDuration,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
