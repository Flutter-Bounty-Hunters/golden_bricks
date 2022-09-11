<p align="center">
  <img src="https://user-images.githubusercontent.com/7259036/189551232-8e8aaf8f-1869-433e-8d19-b91f5c4334ad.png" width="300" alt="Golden Bricks"><br>
  <span><b>A better font for golden tests.</b></span><br><br>
</p>

> This project is a Flutter Bounty Hunters [proof-of-concept](http://policies.flutterbountyhunters.com/proof-of-concept). Want font adjustments? [Fund a milestone](http://policies.flutterbountyhunters.com/fund-milestone) today!

---

# Golden Bricks Font
Like the traditional Ahem font, the Golden Bricks font renders every character as a rectangle to avoid test failures due to anti-aliasing. Unlike the traditional Ahem font, the Golden Bricks font sizes each character rectangle similar to the standard English character, and also adds space between characters. As a result, text in your golden tests will be a similar size to regular text, and your test can render text selections that you can see across multiple characters.

<p align="center">
  <img width="700" alt="Golen Bricks font screenshot" src="https://user-images.githubusercontent.com/7259036/189520359-f702481b-2eef-4340-bbfa-df16e66e6ab6.png">
</p>

# How to use the Golden Bricks font in an app
Use the Golden Bricks font by setting the `fontFamily` of a `TextStyle`:
```dart
Text(
  "Some text",
  style: const TextStyle(
    // The "goldenBricks" variable is a constant that's 
    // exported from the golden_bricks package.
    fontFamily: goldenBricks,
  ),
);
```

# How to use the Golden Bricks font in golden tests
To use a font in Flutter golden tests, you must explicitly load that font before your tests run.
The easiest way to load fonts for golden tests is to use the `golden_toolkit` package. After
adding the `golden_toolkit` package to your test dependencies, create a `flutter_test_config.dart`
file in your `/test` directory. Include the following implementation:

```dart
import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  await loadAppFonts();
  return testMain();
}
```

Once the font is loaded, use the font in your tests, as desired. The easiest way to use the
Golden Bricks font in a test is to configure the default theme font family to use the Golden Bricks
font.

```dart
testWidgets("renders in golden tests", (tester) async {
  await tester.pumpWidget(
    MaterialApp(  
      theme: ThemeData(
        fontFamily: goldenBricks,
      ),
      home: Scaffold(
        // content
      ),
    ),
  );

  // TODO: implement the rest of the test
});
```
