import 'dart:ui';

import 'package:flutter/material.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 9.0, sigmaY: 9.0),
        child: Image.asset(
          height: double.infinity,
            fit:BoxFit.fill,
            'assets/images/eifellTower1.jpg'),
      ),
    );
  }
}
