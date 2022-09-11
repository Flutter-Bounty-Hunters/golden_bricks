import 'package:flutter/material.dart';
import 'package:golden_bricks/golden_bricks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Golden Bricks Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                style: TextStyle(
                  fontFamily: goldenBricks,
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 48),
              Text(
                'abcdefghijklmnopqrstuvwxyz',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'abcdefghijklmnopqrstuvwxyz',
                style: TextStyle(
                  fontFamily: goldenBricks,
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 48),
              Text(
                '1234567890',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 24),
              Text(
                '1234567890',
                style: TextStyle(
                  fontFamily: goldenBricks,
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 48),
              Text(
                '~!@#\$%^&*()_+',
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 48,
                ),
              ),
              SizedBox(height: 24),
              Text(
                '~!@#\$%^&*()_+',
                style: TextStyle(
                  fontFamily: goldenBricks,
                  fontSize: 48,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
