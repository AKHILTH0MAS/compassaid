import 'package:compassaid/Admin/screens/Admin_User_Home.dart';
import 'package:flutter/material.dart';

class AdminMechProfile extends StatefulWidget {
  const AdminMechProfile({super.key});

  @override
  State<AdminMechProfile> createState() => _AdminMechProfileState();
}

class _AdminMechProfileState extends State<AdminMechProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: const Color(0xFFCFE2FF),
          ),
        ),
        Positioned.fill(
          left: 30,
          top: 30,
          right: 30,
          bottom: 30,
          child: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Positioned(
                top: 10,
                left: 10,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminUserHome(),
                      ),
                    );
                  },
                ),
              ),
              const Positioned(
                  top: 50,
                  left: 30,
                  right: 30,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Color(0xFFCFE2FF),
                    backgroundImage: AssetImage(
                      'assets/Rectangle 13.png',
                    ),
                  )),
              const Positioned(
                  top: 210,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      Text('Name',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                      Text('Location',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  )),
              Positioned(
                  top: 300,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Mechanic Username',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          width: 286.2192687988281,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe7f0ff)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('Username',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Phone number',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          width: 286.2192687988281,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe7f0ff)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('0000000000',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('email address',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          width: 286.2192687988281,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe7f0ff)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('example@gmail.com',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Work Experience',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          width: 286.2192687988281,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe7f0ff)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('experience',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Workshop name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          width: 286.2192687988281,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe7f0ff)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('shop name',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          alignment: Alignment.bottomLeft,
                          child: const Text('Your Location',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))),
                      Container(
                          alignment: Alignment.centerLeft,
                          width: 286.2192687988281,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffe7f0ff)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text('location',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                )),
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 142,
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
                                backgroundColor: const Color(0xff73abff),
                                foregroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text('Accept'),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 50,
                            width: 142,
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
                                backgroundColor: const Color(0xffff9e9d),
                                foregroundColor: const Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: const Text('Reject'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    ));
  }
}
