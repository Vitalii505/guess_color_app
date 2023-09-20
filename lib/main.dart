import 'package:flutter/material.dart';
import 'package:guess_color_app/screens/color_magic_screen.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: ColorMagicScreen(),
        );
    }
}

