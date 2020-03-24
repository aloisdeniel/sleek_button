import 'package:example/swatches.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek_button/sleek_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final swatch = bulma;
    final colors = [
      swatch.primary,
      swatch.link,
      swatch.danger,
      swatch.warning,
      swatch.info,
      swatch.success,
      swatch.white,
      swatch.light,
      swatch.dark,
      swatch.black,
    ];
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SectionHeader('Flat style'),
              ButtonCollection(
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.flat(
                    color: color,
                    context: context,
                  ),
                  child: Text('Flat'),
                ),
              ),
              SectionHeader('Outlined style'),
              ButtonCollection(
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.outlined(
                    color: color,
                    context: context,
                  ),
                  child: Text('Outlined'),
                ),
              ),
              SectionHeader('Light style'),
              ButtonCollection(
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.light(
                    color: color,
                    context: context,
                  ),
                  child: Text('Light'),
                ),
              ),
              SectionHeader('Disabled'),
              ButtonCollection(
                colors: colors,
                builder: (context, color) => SleekButton(
                  style: SleekButtonStyle.flat(
                    color: color,
                    context: context,
                  ),
                  child: Text('Disabled'),
                ),
              ),
              SectionHeader('Inverted'),
              ButtonCollection(
                color: swatch.primary,
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.flat(
                    inverted: true,
                    color: color,
                    context: context,
                  ),
                  child: Text('Flat inverted'),
                ),
              ),
              SectionHeader('Outlined inverted style'),
              ButtonCollection(
                color: swatch.primary,
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.outlined(
                    color: color,
                    inverted: true,
                    context: context,
                  ),
                  child: Text('Outlined inverted'),
                ),
              ),
              SectionHeader('Rounded'),
              ButtonCollection(
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.flat(
                    rounded: true,
                    color: color,
                    context: context,
                  ),
                  child: Text('Flat rounded'),
                ),
              ),
              SectionHeader('Outlined rounded'),
              ButtonCollection(
                colors: colors,
                builder: (context, color) => SleekButton(
                  onTap: () {},
                  style: SleekButtonStyle.outlined(
                    rounded: true,
                    color: color,
                    context: context,
                  ),
                  child: Text('Outlined rounded'),
                ),
              ),
              SectionHeader('Icons'),
              ButtonWrap(
                children: <Widget>[
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.primary,
                      context: context,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.check),
                        SizedBox(width: 6),
                        Text('Save'),
                      ],
                    ),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.light(
                      color: swatch.danger,
                      context: context,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Delete'),
                        SizedBox(width: 6),
                        Icon(Icons.close),
                      ],
                    ),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.light,
                      size: SleekButtonSize.medium,
                      context: context,
                    ),
                    child: Icon(Icons.format_bold),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.light,
                      context: context,
                    ),
                    child: Icon(Icons.format_bold),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.light,
                      size: SleekButtonSize.small,
                      context: context,
                    ),
                    child: Icon(Icons.format_bold),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.outlined(
                      color: swatch.dark,
                      size: SleekButtonSize.small,
                      context: context,
                    ),
                    child: Icon(Icons.format_bold),
                  ),
                ],
              ),
              SectionHeader('Sizes'),
              ButtonWrap(
                children: <Widget>[
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.primary,
                      size: SleekButtonSize.small,
                      context: context,
                    ),
                    child: Text('Example'),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.primary,
                      size: SleekButtonSize.normal,
                      context: context,
                    ),
                    child: Text('Example'),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.primary,
                      size: SleekButtonSize.medium,
                      context: context,
                    ),
                    child: Text('Example'),
                  ),
                  SleekButton(
                    onTap: () {},
                    style: SleekButtonStyle.flat(
                      color: swatch.primary,
                      size: SleekButtonSize.big,
                      context: context,
                    ),
                    child: Text('Example'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

typedef Widget ButtonBuilder(BuildContext context, Color color);

class ButtonCollection extends StatelessWidget {
  final List<Color> colors;
  final ButtonBuilder builder;
  final Color color;

  const ButtonCollection({
    @required this.colors,
    @required this.builder,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonWrap(
      color: color,
      children: colors.map((c) => builder(context, c)).toList(),
    );
  }
}

class ButtonWrap extends StatelessWidget {
  final List<Widget> children;
  final Color color;

  const ButtonWrap({@required this.children, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.0),
      ),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      child: Wrap(
        runSpacing: 10.0,
        spacing: 10.0,
        children: children,
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Row(
        children: <Widget>[
          Text(
            "#",
            style: Theme.of(context).textTheme.headline5.copyWith(
                  color: const Color(0xFF3273dc),
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
