import 'package:flutter/material.dart';

class Timer1 extends StatefulWidget {
  const Timer1({super.key});

  @override
  State<Timer1> createState() => Timer1State();
}

class Timer1State extends State<Timer1> {
  TimeOfDay selectedTime = TimeOfDay.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => _selectTime(context), child: const Text("Pick a time")),
      ),
    );
  }
}
