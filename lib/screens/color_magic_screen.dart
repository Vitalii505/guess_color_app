import 'package:flutter/material.dart';
import 'dart:math';

class ColorMagicScreen extends StatefulWidget {
    @override
    _ColorMagicScreenState createState() => _ColorMagicScreenState();
}

class _ColorMagicScreenState extends State<ColorMagicScreen> {
    Color _backgroundColor = Colors.white;
    double _backgroundOpacity = 1.0;

    Color _generateRandomColor() {
        final random = Random();
        return Color.fromARGB(
            255,
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
        );
    }

    void _onScreenTapped() {
        setState(() {
            _backgroundColor = _generateRandomColor();
        });
    }

    void _updateBackgroundOpacity(double value) {
        setState(() {
            _backgroundOpacity = value;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: GestureDetector(
                onTap: _onScreenTapped,
                child: Container(
                    color: _backgroundColor.withOpacity(_backgroundOpacity),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text(
                                'Hello there',
                                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 50.0),
                            Slider(
                                value: _backgroundOpacity,
                                onChanged: _updateBackgroundOpacity,
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}