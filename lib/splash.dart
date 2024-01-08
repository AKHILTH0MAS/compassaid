import 'package:compassaid/colors.dart';
import 'package:compassaid/landingpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
      super.initState();
    setState(() {
      Future.delayed(const Duration(seconds: 3 /* should be three seconds*/),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Landing(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/compassaid_logo.png',
            ),
          ),
          const SizedBox(
            child: Center(
                child: Text(
              'COMPASSAID',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            )),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
