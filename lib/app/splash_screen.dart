import 'package:flutter/material.dart';
import '../../main.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  final Key? key;
  const SplashScreen({this.key, this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      goRouter.go('/authselection');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xEFFFB500),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/app/images/Ellipse 2.png',
            ),
          ),
          Center(
            child: Image.asset(
              'assets/app/images/purrfect_logo.png',
              width: 245,
              height: 70,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/app/images/Ellipse 1.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/app/images/vertex logo.png',
            ),
          ),
        ],
      ),
    );
  }
}
