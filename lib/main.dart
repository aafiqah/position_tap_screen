import 'package:flutter/material.dart';
import 'package:position_tap_screen/position_tap_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tap Screen Demo',
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return ListView(
              children: [
                Text('Flutter Tap Screen Demo'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const PositionTapScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 200,
                        padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Text('Position Tap Screen', textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
