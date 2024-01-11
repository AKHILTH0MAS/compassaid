import 'package:compassaid/Admin/screens/Admin_User_Home.dart';
import 'package:compassaid/Admin/screens/addNotification.dart';
import 'package:compassaid/Admin/screens/payment.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool page = true;
  Color aceppted = const Color(0xFFE7F0FF);
  Color requested = const Color(0xFFCEE2FF);
  Color selected = const Color.fromRGBO(206, 226, 255, 1);
  final int selectedindex = 2;
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
                height: 30,
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Heading",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins')),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "Lorem ipsum is a placeholder text \ncommonly used to demonstrate the visual form of a \ndocument or a typeface without relying . . . . .",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
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
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddNotification(),
              ),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF2357D9),
            size: 30,
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
            if (index == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminUserHome()));
            } else if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Payment()));
            }
          });
        },
        currentIndex: selectedindex,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
