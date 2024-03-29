import 'package:compassaid/Mechanic/screens/loginPageScreen.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => EditProfileState();
}

class EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/profile_large.png"),
              const SizedBox(
                height: 20,
              ),
              const EditProfileTextformfeild(text: "Name"),
              const SizedBox(height: 20),
              const EditProfileTextformfeild(text: "User Name"),
              const SizedBox(height: 20),
              const EditProfileTextformfeild(text: "Phone Number"),
              const SizedBox(height: 20),
              const EditProfileTextformfeild(text: "Email"),
              const SizedBox(height: 20),
              const EditProfileTextformfeild(text: "Experience"),
              const SizedBox(height: 20),
              const EditProfileTextformfeild(text: "Location"),
              const SizedBox(height: 20),
              const EditProfileTextformfeild(text: "Shop Name"),
              const SizedBox(height: 20),
              DefualtButton(
                text: "Done",
                onTap: () {},
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}

class EditProfileTextformfeild extends StatelessWidget {
  const EditProfileTextformfeild({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      decoration: ShapeDecoration(
        color: const Color(0xFFE8F1FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: const TextStyle(
            color: Color(0xFF2357D9),
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
          contentPadding: const EdgeInsets.only(left: 20),
        ),
      ),
    );
  }
}
