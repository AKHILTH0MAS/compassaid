import 'package:compassaid/User/home%20demo.dart';
import 'package:flutter/material.dart';


class NeededServices extends StatefulWidget {
  const NeededServices({super.key});

  @override
  State<NeededServices> createState() => _NeededServicesState();
}

class _NeededServicesState extends State<NeededServices> {
  String _selectedMechanicType = 'fuel leaking';
  String _selectedMechanicType2 = '--select--';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
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
                    'Needed services',
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
                const Text('Contact number'),
                const SizedBox(height: 5),
                const Text('Experience'),
                const SizedBox(height: 10),

                // Green container with "Available" text
                SizedBox(
                  width: 150, // Adjust width as needed
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
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
                
              ],
            ),

            SizedBox(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          "Add needed services   ",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 200,
                      color: const Color(0xffCFE2FF),
                      child: DropdownButton<String>(
                        value: _selectedMechanicType,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 75),
                          child: Icon(Icons.arrow_drop_down),
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 0,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedMechanicType = newValue!;
                            // **Trigger actions based on the selected value**
                          });
                        },
                        items: <String>[
                          'fuel leaking',
                          'full mech',
                          'this angel rose'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 200,
                      color: const Color(0xffCFE2FF),
                      child: DropdownButton<String>(
                        value: _selectedMechanicType2,
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 75),
                          child: Icon(Icons.arrow_drop_down),
                        ),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 0,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedMechanicType2 = newValue!;
                            // **Trigger actions based on the selected value**
                          });
                        },
                        items: <String>[
                          'fuel leaking',
                          'full mech',
                          'this angel rose',
                          '--select--'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text("Place"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffCFE2FF)),
                      child: TextFormField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Request()));
                        },
                        child: Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                              color: const Color(0xFF2357D9),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            "Request",
                            style: TextStyle(color: Colors.white),
                          )),
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
    );
  }
}
