import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class CardAdvertisement extends StatefulWidget {
  const CardAdvertisement({super.key});

  @override
  State<CardAdvertisement> createState() => _CardAdvertisementState();
}

class _CardAdvertisementState extends State<CardAdvertisement> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: screenSize.width * 0.90,
        height: 150,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.darkFlatButtonColor
              : AppColors.lightFlatButtonColor.withOpacity(0.99),
          borderRadius: BorderRadius.circular(20),
        ),
       
      ),
    );
  }
}
