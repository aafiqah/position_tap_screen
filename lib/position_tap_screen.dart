import 'package:flutter/material.dart';

class PositionTapScreen extends StatefulWidget {
  const PositionTapScreen({super.key});

  @override
  State<PositionTapScreen> createState() => _PositionTapScreenState();
}

class _PositionTapScreenState extends State<PositionTapScreen> {
  Offset? _tapPosition;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        final tapPosition = details.globalPosition;
        setState(() {
          _tapPosition = tapPosition;
        });
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('KindaCode.com')),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.blue,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Display X coordinate of tap
                    Text(
                      'X: ${_tapPosition?.dx.toStringAsFixed(2) ?? "Tap Somewhere"}',
                      style: const TextStyle(fontSize: 36, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Display Y coordinate of tap
                    Text(
                      'Y: ${_tapPosition?.dy.toStringAsFixed(2) ?? "Tap Somewhere"}',
                      style: const TextStyle(fontSize: 36, color: Colors.yellow),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
