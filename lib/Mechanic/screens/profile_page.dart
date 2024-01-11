import 'package:compassaid/Mechanic/screens/edit_profile.dart';
import 'package:compassaid/Mechanic/screens/loginPageScreen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfile(),
                ),
              );
            },
            icon: const Icon(
              Icons.edit_square,
            ),
          ),
        ],
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
              const ContainerEditProfile(text: "Name"),
              const SizedBox(height: 20),
              const ContainerEditProfile(text: "User Name"),
              const SizedBox(height: 20),
              const ContainerEditProfile(text: "Phone Number"),
              const SizedBox(height: 20),
              const ContainerEditProfile(text: "Email"),
              const SizedBox(height: 20),
              const ContainerEditProfile(text: "Experience"),
              const SizedBox(height: 20),
              const ContainerEditProfile(text: "Location"),
              const SizedBox(height: 20),
              const ContainerEditProfile(text: "Shop Name"),
              const SizedBox(height: 20),
              DefualtButton(
                text: "Done",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerEditProfile extends StatelessWidget {
  const ContainerEditProfile({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ),
    );
  }
}
