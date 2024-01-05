import 'package:flutter/material.dart';

class TextfieldLogin extends StatelessWidget {
  const TextfieldLogin({
    super.key,
    required this.hinttext,
  });
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.08,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: hinttext,
            ),
          ),
        ),
      ),
    );
  }
}
