import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:launch_code_hybrid/trainer_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToTrainerPage();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(height: 20),
              const SpinKitFadingCube(
                color: Colors.red,
                size: 30.0,
              )
            ],
          ),
        ),
      );

  void _navigateToTrainerPage() async {
    await Future.delayed(const Duration(seconds: 5), () {});

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const TrainerScreen()));
  }
}
