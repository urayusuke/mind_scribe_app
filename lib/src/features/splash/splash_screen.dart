import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mind_scribe_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 10), () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Lottie.asset('assets/splash.json'),
      ),
    );
  }
}
