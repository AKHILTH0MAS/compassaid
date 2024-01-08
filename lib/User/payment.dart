import 'package:compassaid/User/Home.dart';
import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/check1.png',
                width: 200, // Adjust as needed
                height: 150, // Adjust as needed
              ),
              const Text(
                'successful',
                style: TextStyle(fontSize: 24), // Adjust as needed
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: SizedBox(
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mechanic()));
                      },
                      child: Container(
                        height: 45,
                        width: 230,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          "Back to home page",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
