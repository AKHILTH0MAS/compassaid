import 'package:compassaid/User/payment.dart';
import 'package:compassaid/User/rating.dart';
import 'package:flutter/material.dart';


class MechanicBill extends StatefulWidget {
  const MechanicBill({super.key});

  @override
  State<MechanicBill> createState() => _MechanicBillState();
}

class _MechanicBillState extends State<MechanicBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mechanic Bill',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffCFE2FF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
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

                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const Ratings())),
                    ), // Edit icon for rating creation
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 75,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 225),
              child: Text(
                'Amount',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)))),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Payment()));
                },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xFF2357D9),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Payment ',
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
      ),
    );
  }
}
