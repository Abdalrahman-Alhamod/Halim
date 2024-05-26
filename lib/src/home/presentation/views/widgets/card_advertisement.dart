import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class CardAdvertisement extends StatefulWidget {
  const CardAdvertisement({super.key});

  @override
  State<CardAdvertisement> createState() => _CardAdvertisementState();
}

class _CardAdvertisementState extends State<CardAdvertisement> {
  final PageController _pageController = PageController();
  final List<String> _imageUrls = [
    AppImages.testCourseCover,
    AppImages.testCourseCover,
    AppImages.testCourseCover,
    
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            width: screenSize.width * 0.90,
            height: 150,
            decoration: BoxDecoration(
              color: context.isDarkMode
                  ? AppColors.primaryColor
                  : AppColors.lightFlatButtonColor.withOpacity(0.99),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: PageView.builder(
                controller: _pageController,
                itemCount: _imageUrls.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    _imageUrls[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _pageController,
            count: _imageUrls.length,
            effect: ExpandingDotsEffect(
              activeDotColor: context.isDarkMode
                  ? Colors.blue
                  : Colors.blue,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8,
              spacing: 8,
            ),
          ),
        ],
      ),
    );
  }
}
