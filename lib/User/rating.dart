import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Ratings extends StatefulWidget {
  const Ratings({super.key});

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Rating',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xffCFE2FF),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              // Top container

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
                  RatingBar.builder(
                    itemBuilder: (context, index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    },
                    onRatingUpdate: (index) {},
                    initialRating: 5,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    child: Center(
                      child: Text("Add rating",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                  ),

                  RatingBar.builder(
                    itemBuilder: (context, index) {
                      return const Icon(Icons.star);
                    },
                    onRatingUpdate: (index) {},
                    maxRating: 5,
                    allowHalfRating: true,
                    minRating: 1,
                    initialRating: 0,
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
          ),
        ));
  }
}
