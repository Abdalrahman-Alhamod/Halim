import 'package:flutter/material.dart';
import '../../../../../core/assets/app_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CardAdvertisementLocal extends StatefulWidget {
  const CardAdvertisementLocal({super.key});

  @override
  State<CardAdvertisementLocal> createState() => _CardAdvertisementLocalState();
}

class _CardAdvertisementLocalState extends State<CardAdvertisementLocal> {
  final CarouselController _carouselController = CarouselController();
  final List<String> _imageUrls = [
    AppImages.testCourseCover,
    AppImages.testCertificate,
    AppImages.testCourseCover,
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          _buildImageCarousel(screenSize, context),
          const SizedBox(height: 10),
          _buildPageIndicator(context),
        ],
      ),
    );
  }

  Widget _buildImageCarousel(Size screenSize, BuildContext context) {
    return Container(
      width: screenSize.width * 0.90,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CarouselSlider.builder(
          carouselController: _carouselController,
          itemCount: _imageUrls.length,
          itemBuilder: (context, index, realIndex) {
            return Image.asset(
              _imageUrls[index],
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 8),
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPageIndicator(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: _currentIndex,
      count: _imageUrls.length,
      effect: ExpandingDotsEffect(
        activeDotColor: context.isDarkMode ? Colors.blue : Colors.blue,
        dotColor: Colors.grey,
        dotHeight: 8,
        dotWidth: 8,
        spacing: 8,
      ),
      onDotClicked: (index) {
        _carouselController.animateToPage(index);
      },
    );
  }
}
