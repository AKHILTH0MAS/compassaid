import 'package:compassaid/Mechanic/screens/loginPageScreen.dart';
import 'package:compassaid/User/login.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  bool isMechSelected = false;
  bool isUserSelected = false;

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
      body: Container(
        color: const Color(0xFFCFE2FF),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  Image.asset('assets/compassaid_logo.png'),
                  const SizedBox(height: 50),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Who you are",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: selectMech,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isMechSelected ? Colors.blue : Colors.white,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Mechanic',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: isMechSelected ? Colors.white : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: selectUser,
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isUserSelected ? Colors.blue : Colors.white,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'User',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: isUserSelected ? Colors.white : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      // Add navigation logic for Admin Login page
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => AdminLoginPage(),
                      //   ),
                      // );
                    },
                    child: const Text(
                      "Admin Login",
                      style: TextStyle(
                        color: Color(0xFF2357D9),
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
                            builder: (context) => const UserLoginPage(),
                          ),
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
