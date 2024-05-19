import 'package:flutter/material.dart';
class TeacherAvatar extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rad;
  const TeacherAvatar({super.key, 
    required this.imageUrl,
    required this.name,
    this.rad=35
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Add your onTap functionality here
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius:rad,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(
                  fontSize: 12,
  color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}