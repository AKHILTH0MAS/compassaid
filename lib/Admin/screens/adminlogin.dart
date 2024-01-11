import 'package:compassaid/Admin/screens/Admin_User_Home.dart';
import 'package:flutter/material.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  TextEditingController UserNameController = TextEditingController();
  TextEditingController AdminPasswordController = TextEditingController();
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFCFE2FF),
        ),
        backgroundColor: const Color(0xFFCFE2FF),
        body: SingleChildScrollView(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(children: [
                Image.asset('assets/compassaid_logo.png'),
                const SizedBox(
                  height: 30,
                ),
                const Text("LOGIN",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Poppins")),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text("Enter Username",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins")),
                ),
                TextFormField(
                  controller: UserNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Username';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    hintStyle: TextStyle(
                        color: Color(0xFF7D7D7D), fontFamily: "Poppins"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                          color:
                              Colors.transparent), // Set outline color to white
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text("Enter Password",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins")),
                ),
                TextFormField(
                  controller: AdminPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Color(0xFF7D7D7D), fontFamily: "Poppins"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminUserHome(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2357D9),
                      foregroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        )));
  }
}
