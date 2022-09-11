import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_bricks/golden_bricks.dart';

void main() {
  group("Golden Bricks", () {
    testWidgets("renders in golden tests", (tester) async {
      await tester.pumpWidget(_buildDemoApp());

      await expectLater(
        find.byType(MaterialApp),
        matchesGoldenFile("example_golden_test.png"),
      );
    });
  });
}

Widget _buildDemoApp() {
  return MaterialApp(
    theme: ThemeData(
      fontFamily: goldenBricks,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Golden Bricks",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "Hello, world!",
              style: TextStyle(
                fontSize: 42,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
