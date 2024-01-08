import 'package:compassaid/User/Home.dart';
import 'package:compassaid/User/Profile.dart';
import 'package:compassaid/User/notification.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  final containerColor = const Color(0xffCFE2FF); // Store container color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Blue container with profile photo, search, and icon
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
                      borderRadius:
                          BorderRadius.circular(20.0), // Increased roundness
                    ),
                    padding: const EdgeInsets.all(12.0), // Reduced padding
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
                return Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
                  child: Card(
                    color: containerColor,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Name'), // Replace with actual mechanic name
                                Text('date'),
                                Text('time'), // Add specialties
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: index < 2 ? Colors.green : Colors.red,
                              borderRadius: BorderRadius.circular(
                                  10.0), // Increased roundness
                              // Use a fixed width to ensure equal size for green and red containers
                              // Adjust based on text length and padding
                            ),
                            child: Center(
                              child: Text(
                                index < 2
                                    ? ['Approved', 'Pay'][index]
                                    : ['Failed', 'Rejected'][index - 2],
                                style: const TextStyle(color: Colors.white),
                              ),
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
          Padding(
            padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Mechanic()));
                    },
                    child: Container(
                      height: 50,
                      width: 20,
                      decoration: BoxDecoration(
                        color: containerColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Mechanics',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 20,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
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
                          color: Colors.white),
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
