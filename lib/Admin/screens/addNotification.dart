import 'package:compassaid/Admin/screens/notification.dart';
import 'package:flutter/material.dart';

class AddNotification extends StatefulWidget {
  const AddNotification({super.key});

  @override
  State<AddNotification> createState() => _AddNotificationState();
}

class _AddNotificationState extends State<AddNotification> {
  TextEditingController MatterController = TextEditingController();
  TextEditingController ContentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCFE2FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFCFE2FF),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text("Enter Matter",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins")),
            ),
            TextFormField(
              controller: MatterController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Matter';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Matter',
                hintStyle:
                    TextStyle(color: Color(0xFF7D7D7D), fontFamily: "Poppins"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text("Enter Content",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins")),
            ),
            TextField(
              controller: ContentController,
              maxLines: 11,
              textAlignVertical: TextAlignVertical.top,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFFFFFFF),
                labelText: 'Content...',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Notifications(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2357D9),
                  foregroundColor: const Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
