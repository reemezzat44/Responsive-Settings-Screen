import 'package:assignment12_app/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 227, 225, 225),
                    radius: 46,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 43,
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.black,
                        size: 73,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 6,
                    bottom: 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.camera_alt_rounded, size: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: screenHeight * 0.07,
                width: screenWidth * 0.70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: const Color.fromARGB(255, 215, 213, 213),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(),
                    border: InputBorder.none,
                    hintText: "Search for a settings...",
                    prefixIconColor: const Color.fromARGB(255, 165, 163, 163),
                    fillColor: const Color.fromARGB(255, 201, 200, 200),
                    prefixIcon: Icon(Icons.search_outlined, size: 30),
                  ),
                ),
              ),
              LabelText(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                labelText: "Account",
              ),

              SettingGroup(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                children: [
                  SettingRow(
                    text: 'Edit Profile',
                    icon: Icon(Icons.person_outline_rounded),
                  ),
                  SettingRow(
                    text: "security",
                    icon: Icon(Icons.safety_check_outlined),
                  ),
                  SettingRow(
                    text: "Notification",
                    icon: Icon(Icons.notifications_none),
                  ),
                  SettingRow(text: "Privacy", icon: Icon(Icons.lock_outline)),
                ],
              ),
              LabelText(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                labelText: "Support & About",
              ),
              SettingGroup(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                children: [
                  SettingRow(
                    text: 'My Subscription',
                    icon: Icon(Icons.credit_card),
                  ),
                  SettingRow(
                    text: "Help & Support",
                    icon: Icon(Icons.help_outline_outlined),
                  ),
                  SettingRow(
                    text: "Terms and Policies",
                    icon: Icon(Icons.info_outline),
                  ),
                ],
              ),
              LabelText(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                labelText: "Actions",
              ),
              SettingGroup(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                children: [
                  SettingRow(
                    text: 'Report a problem',
                    icon: Icon(Icons.flag_outlined),
                  ),
                  SettingRow(
                    text: "Add account",
                    icon: Icon(Icons.group_outlined),
                  ),
                  SettingRow(text: "Log out", icon: Icon(Icons.logout)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
