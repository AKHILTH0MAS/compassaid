import 'package:compassaid/Admin/screens/Admin_Mech.dart';
import 'package:compassaid/Admin/screens/Admin_User_Home.dart';
import 'package:compassaid/Admin/screens/notification.dart';
import 'package:compassaid/Admin/screens/payment.dart';
import 'package:flutter/material.dart';

class AdminMechHome extends StatefulWidget {
  const AdminMechHome({super.key});

  @override
  State<AdminMechHome> createState() => _AdminMechHomeState();
}

class _AdminMechHomeState extends State<AdminMechHome> {
  bool page = true;
  Color aceppted = const Color(0xFFE7F0FF);
  Color requested = const Color(0xFFCEE2FF);
  Color selected = const Color.fromRGBO(206, 226, 255, 1);
  final int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCFE2FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFCFE2FF),
        leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: CircleAvatar(
              radius: 25,
              child: Image.asset('assets/Ellipse1.png'),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 165,
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
                        backgroundColor: const Color(0xFFFFFFFF),
                        foregroundColor: const Color(0xFF2357D9),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        ),
                      ),
                      child: const Text(
                        'User',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 165,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2357D9),
                        foregroundColor: const Color(0xFFFFFFFF),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                      child: const Text(
                        'Mechanic',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminMechProfile(),
                    ),
                  );
                },
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image(image: AssetImage('assets/Rectangle 13.png')),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Name",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins')),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Mobile Number",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins')),
                          Text("Service",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(image: AssetImage('assets/Rectangle 13.png')),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Name",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Mobile Number",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                        Text("Service",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins')),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Payment"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
        ],
        onTap: (index) {
          setState(() {
            if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Payment()));
            } else if (index == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()));
            }
          });
        },
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
