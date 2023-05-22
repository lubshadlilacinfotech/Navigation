import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, "/navigationScreen"),
            child: const Text("Splash Screen")),
      ),
    );
  }
}
