import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';

class MyCourseCertificateSection extends StatelessWidget {
  const MyCourseCertificateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Image.asset(AppImages.testCertificate),
    );
  }
}
