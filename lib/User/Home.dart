import 'package:compassaid/User/Profile.dart';
import 'package:compassaid/User/home%20demo.dart';
import 'package:compassaid/User/needed%20service.dart';
import 'package:compassaid/User/notification.dart';
import 'package:flutter/material.dart';


class Mechanic extends StatefulWidget {
  const Mechanic({super.key});

  @override
  State<Mechanic> createState() => _MechanicState();
}

class _MechanicState extends State<Mechanic> {
  final containerColor = const Color(0xffCFE2FF);

  final servicesList = [
    'Fuel Leaking',
    'Battery Check',
    'break pad replacement',
    'tyre changing and replacement'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top container
          Container(
            color: containerColor,
            height: 75,
            child: Row(
              children: [
                // Profile photo
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(16.0),
                    child: // Use a NetworkImage or AssetImage here for the profile photo
                        Image.asset('assets/Ellipse1.png'),
                  ),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 8.0),
                        Text('Search'),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Image.asset('assets/notification 2.png'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
                  },
                ),
              ],
            ),
          ),

          // List card views of mechanics
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                bool isAvailable = index % 2 == 0;
                String experienceLevel =
                    index == 0 ? '2+ year experience' : '1+ year experience';

                return Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                  child: Card(
                    color: containerColor,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Left container with image and name

                          Column(
                            children: [
                              Image.asset('assets/man1.png'),
                              const SizedBox(height: 10),
                              const Text('Name'),
                            ],
                          ),

                          const SizedBox(width: 10),

                          // Right container with details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Experience level
                                Text(experienceLevel),

                                // Services in a separate column
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: servicesList
                                      .map((service) => Text(service))
                                      .toList(),
                                ),
                                // Availability container
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const NeededServices(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 110,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 8.0),
                                    decoration: BoxDecoration(
                                      color: isAvailable
                                          ? Colors.green
                                          : Colors.red,
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        isAvailable
                                            ? 'Available'
                                            : 'Unavailable',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Bottom containers

          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 20,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Mechanic',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Request()));
                    },
                    child: Container(
                      height: 50,
                      width: 20,
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Request',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
