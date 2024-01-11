import 'package:compassaid/Admin/screens/adminlogin.dart';
import 'package:compassaid/Mechanic/screens/loginPageScreen.dart';
import 'package:compassaid/User/login.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  bool isUserSelected = false;
  bool isMechSelected = false;
  void selectMech() {
    setState(() {
      isMechSelected = true;
      isUserSelected = false;
    });
  }

  void selectUser() {
    setState(() {
      isMechSelected = false;
      isUserSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFCFE2FF),
        body: SingleChildScrollView(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: (60)),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Image.asset('assets/compassaid_logo.png'),
                  const SizedBox(
                    height: (50),
                  ),
                  Container(
                    width: 286.2192687988281,
                    height: 50,
                    alignment: Alignment.bottomLeft,
                    child: const Text("who you are",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            fontFamily: "Poppins")),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 286.2192687988281,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: selectMech,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isMechSelected ? Colors.blue : Colors.white,
                        foregroundColor:
                            isMechSelected ? Colors.white : Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 3), // Adjust the left padding as needed
                          child: Text(
                            'Mechanic',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins"),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 286.2192687988281,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: selectUser,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isUserSelected ? Colors.blue : Colors.white,
                        foregroundColor:
                            isUserSelected ? Colors.white : Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3),
                          child: Text(
                            'User',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins"),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Adminlogin(),
                        ),
                      );
                    },
                    child: const Text(
                      "Admin Login",
                      style: TextStyle(
                          color: Color(0xFF2357D9),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins"),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  DefualtButton(
                    text: "continue",
                    onTap: () {
                      if (isMechSelected) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MechLoginPage(),
                          ),
                        );
                      } else if (isUserSelected) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
