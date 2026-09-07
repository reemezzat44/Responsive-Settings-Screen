import 'package:flutter/material.dart';

class SettingGroup extends StatelessWidget {
  final List<Widget> children;

  const SettingGroup({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.children,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.005,
        right: screenWidth * 0.05,
        left: screenWidth * 0.05,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color.fromARGB(255, 238, 237, 237),
        ),
        child: Column(children: children),
      ),
    );
  }
}

class SettingRow extends StatelessWidget {
  final String text;
  final Icon icon;
  const SettingRow({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          // spacing: 30,
          children: [
            icon,
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.labelText,
  });

  final double screenWidth;
  final double screenHeight;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.047,
        top: screenHeight * 0.02,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          labelText!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
