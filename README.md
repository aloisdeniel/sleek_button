<img src="https://github.com/aloisdeniel/sleek_button/raw/master/sleek_button_logo.png" width="100%">

<p>
  <a href="https://pub.dartlang.org/packages/sleek_button"><img src="https://img.shields.io/pub/v/sleek_button.svg"></a>
  <a href="https://www.buymeacoffee.com/aloisdeniel">
    <img src="https://img.shields.io/badge/$-donate-ff69b4.svg?maxAge=2592000&amp;style=flat">
  </a>
</p>

A simple but yet customizable button.

<img height="184" src="https://github.com/aloisdeniel/sleek_button/raw/master/images/examples.png">

## Install

Add the dependency to your `pubspec.yaml` :

```yaml
dependencies:
    sleek_button: <version>
```

## Quick start

```dart
SleekButton(
    onTap: () {
        print('tapped!')
    },
    style: SleekButtonStyle.flat(
        color: swatch.primary,
        inverted: true,
        rounded: true,
        size: SleekButtonSize.big,
        context: context,
    ),
    child: const Icon(Icons.format_bold),
)
```

## Usage

### Widget

<img height="71" src="https://github.com/aloisdeniel/sleek_button/raw/master/images/widget.png">

```dart
SleekButton(
    onTap: () {
        print('tapped!');
    },
    style: <style>
    child: const Text('Save'),,
)
```

```dart
SleekButton(
    onTap: () {
        print('tapped!');
    },
    style: <style>
    child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
            const Icon(Icons.check),
            const SizedBox(width: 6),
            const Text('Save'),
        ],
    ),
)
```

If the direct child is an `Icon`, the button will be a square.

```dart
SleekButton(
    onTap: () {
        print('tapped!');
    },
    style: <style>
    child: const Icon(Icons.check),
)
```

### Styles

#### Flat

<img height="132" src="https://github.com/aloisdeniel/sleek_button/raw/master/images/style_flat.png">

```dart
SleekButtonStyle.flat(
    context: context,
)
```

```dart
SleekButtonStyle.flat(
    size: SleekButtonSize.small,
    context: context,
)
```

```dart
SleekButtonStyle.flat(
    inverted: true,
    context: context,
)
```

```dart
SleekButtonStyle.flat(
    rounded: true,
    context: context,
)
```

```dart
SleekButtonStyle.flat(
    size: SleekButtonSize.medium,
    rounded: true,
    context: context,
)
```

#### Outlined

<img height="132" src="https://github.com/aloisdeniel/sleek_button/raw/master/images/style_outlined.png">

```dart
SleekButtonStyle.outlined(
    context: context,
)
```

```dart
SleekButtonStyle.outlined(
    size: SleekButtonSize.small,
    context: context,
)
```

```dart
SleekButtonStyle.outlined(
    inverted: true,
    context: context,
)
```

```dart
SleekButtonStyle.outlined(
    rounded: true,
    context: context,
)
```

```dart
SleekButtonStyle.outlined(
    size: SleekButtonSize.medium,
    rounded: true,
    context: context,
)
```

#### Light

<img height="77" src="https://github.com/aloisdeniel/sleek_button/raw/master/images/style_light.png">

```dart
SleekButtonStyle.light(
    context: context,
)
```

```dart
SleekButtonStyle.light(
    size = SleekButtonSize.small,
    context: context,
)
```

```dart
SleekButtonStyle.light(
    rounded = true,
    context: context,
)
```

```dart
SleekButtonStyle.light(
    size: SleekButtonSize.medium,
    rounded = true,
    context: context,
)
```

#### Colors

<img height="54" src="https://github.com/aloisdeniel/sleek_button/raw/master/images/style_colors.png">

If you give a `color`, all variants (dark, light, invert) will be calculated with the help of the [derived_colors](https://github.com/aloisdeniel/derived_colors) package.

```dart
SleekButtonStyle.flat(
    color: const Color(0xFF)
    context: context,
)
```

```dart
 SleekButtonStyle.light(
    color: const Color(0xFFFFC369),
    context: context,
)
```

```dart
SleekButtonStyle.outlined(
    color: const Color(0xFF323232),
    context: context,
)
```

### Theme

You can customize the default appearance of the button by adding a `SleekButtonTheme` in the tree. If a `Theme` is in the tree,
it will use it tu deduce a default theme.

```dart
SleekButtonTheme(
    data: const SleekButtonThemeData(
        padding: 24,
        textStyle: TextStyle(fontSize: 11),
        cornerRadius: 8.0,
        iconTheme: IconThemeData(size: 10),
        fill: Color(0xFFFF0000),
        borderWidth: 2,
    ),
    child: app,
)
```

## Thanks

Thanks to the [bulma](https://bulma.io) framework team for the inspiration.
