import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // Back button
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () =>
                        Navigator.pop(context), // Return to previous page
                  ),
                ),
              ],
            ),
          ),

          // Image and name
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                    'assets/Ellipse1.png'), // Replace with your image path
              ),
              const SizedBox(height: 5),
              const Text('Name'),
            ],
          ),

          const SizedBox(height: 40),

          // Form inputs
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter your name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffCFE2FF),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "  name", border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter phone number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffCFE2FF),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "  phone number",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter your email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffCFE2FF),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "  enter email",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    // Done button
                    const SizedBox(
                      height: 225,
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
                              'Done ',
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
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
