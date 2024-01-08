import 'package:flutter/material.dart';

class TimePicker2 extends StatefulWidget {
  const TimePicker2({Key? key}) : super(key: key);

  @override
  State<TimePicker2> createState() => _TimePicker2State();
}

class _TimePicker2State extends State<TimePicker2> {
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Selected time ${selectedTime.format(context)}'),
          ElevatedButton(
            onPressed: () => _selectTime(context),
            child: const Text('Select time'),
          ),
        ],
      ),
    );
  }
}
