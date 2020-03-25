import 'package:example/swatches.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek_button/sleek_button.dart';

import 'home.dart';

class Readme extends StatelessWidget {
  final Swatch swatch;

  Readme(this.swatch);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(accentColor: swatch.primary),
      child: Builder(
        builder: (context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionHeader('README'),
            SizedBox(
              width: 300,
              child: ButtonWrap(
                children: <Widget>[
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.flat(
                      context: context,
                    ),
                    child: const Text('Save'),
                  ),
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.flat(
                      color: swatch.info,
                      size: SleekButtonSize.small,
                      context: context,
                    ),
                    child: const Text('Save'),
                  ),
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.flat(
                      inverted: true,
                      context: context,
                    ),
                    child: const Text('Save'),
                  ),
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.flat(
                      color: swatch.warning,
                      rounded: true,
                      context: context,
                    ),
                    child: const Text('Save'),
                  ),
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.light(
                      color: swatch.danger,
                      size: SleekButtonSize.medium,
                      rounded: true,
                      context: context,
                    ),
                    child: const Text('Save'),
                  ),
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.flat(
                      color: swatch.success,
                      size: SleekButtonSize.medium,
                      context: context,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Icon(Icons.check),
                        const SizedBox(width: 6),
                        const Text('Save'),
                      ],
                    ),
                  ),
                  SleekButton(
                    onTap: () {
                      print('tapped!');
                    },
                    style: SleekButtonStyle.light(
                      color: swatch.success,
                      size: SleekButtonSize.medium,
                      context: context,
                    ),
                    child: const Icon(Icons.check),
                  ),
                ],
              ),
            ),
            ButtonWrap(
              color: swatch.primary.withOpacity(0.20),
              children: <Widget>[
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Icon(Icons.check),
                      const SizedBox(width: 6),
                      const Text('Save'),
                    ],
                  ),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  child: const Icon(Icons.check),
                ),
              ],
            ),
            ButtonWrap(
              color: swatch.primary.withOpacity(0.20),
              children: <Widget>[
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.flat(
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.flat(
                    size: SleekButtonSize.small,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.flat(
                    inverted: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.flat(
                    rounded: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.flat(
                    size: SleekButtonSize.medium,
                    rounded: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
              ],
            ),
            ButtonWrap(
              color: swatch.primary.withOpacity(0.20),
              children: <Widget>[
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.outlined(
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.outlined(
                    size: SleekButtonSize.small,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.outlined(
                    inverted: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.outlined(
                    rounded: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.outlined(
                    size: SleekButtonSize.medium,
                    rounded: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
              ],
            ),
            ButtonWrap(
              children: <Widget>[
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.light(
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.light(
                    size: SleekButtonSize.small,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.light(
                    rounded: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
                SleekButton(
                  onTap: () {
                    print('tapped!');
                  },
                  style: SleekButtonStyle.light(
                    size: SleekButtonSize.medium,
                    rounded: true,
                    context: context,
                  ),
                  child: const Text('Save'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
