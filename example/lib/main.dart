import 'package:flutter/material.dart';
import 'package:sleek_button/sleek_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SleekButtonTheme(
      data: SleekButtonThemeData.fallback(),
      child: MaterialApp(
        title: 'Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Center(
          child: SleekButton(
            onTap: () {
              print('tapped!');
            },
            style: SleekButtonStyle.flat(
              color: const Color(0xFF5D3BE8),
              inverted: true,
              rounded: true,
              size: SleekButtonSize.big,
              context: context,
            ),
            child: const Icon(Icons.format_bold),
          ),
        ),
      ),
    );
  }
}
