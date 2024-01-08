import 'package:flutter/material.dart';

class Ratings extends StatefulWidget {
  const Ratings({super.key});

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        // Top container
        Container(
          color: const Color(0xffCFE2FF),
          height: 75,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              // Back button
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const Spacer(),
              // Title
              const Text(
                'Your Rating',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // Image, name, contact number, experience, and availability
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(
                  'assets/man1.png'), // Replace with your image path
            ),
            const SizedBox(width: 10),
            const Text('Name'),
            const SizedBox(height: 10),

            const Text('Experience'),
            const SizedBox(height: 10),

            // Green container with "Available" text
            SizedBox(
              width: 100, // Adjust width as needed
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(8),
                child: const Center(
                  child: Text(
                    'Available',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/star2.png'),
                    Image.asset('assets/star2.png'),
                    Image.asset('assets/star2.png'),
                    Image.asset('assets/star2.png'),
                    Image.asset('assets/star2.png'),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                Text("Add rating",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Row(
                children: [
                  Image.asset('assets/stars.png'),
                  Image.asset('assets/stars.png'),
                  Image.asset('assets/stars.png'),
                  Image.asset('assets/stars.png'),
                  Image.asset('assets/stars.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              child: Center(
                  child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2357D9),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Submit ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ]),
    ));
  }
}
