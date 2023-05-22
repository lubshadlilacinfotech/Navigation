import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, "/thirdScreen"),
            child: const Text("Home Screen")),
      ),
    );
  }
}
