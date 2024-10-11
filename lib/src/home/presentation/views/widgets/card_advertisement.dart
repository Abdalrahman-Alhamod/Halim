import 'package:flutter/material.dart';
import 'package:halim/core/widgets/network_image_loader.dart';
import 'package:halim/src/home/data/models/adv_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utils/context_extensions.dart';

class CardAdvertisement extends StatefulWidget {
  final List<AdvModel> advModels;

  const CardAdvertisement({super.key, required this.advModels});

  @override
  State<CardAdvertisement> createState() => _CardAdvertisementState();
}

class _CardAdvertisementState extends State<CardAdvertisement> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    // إنشاء قائمة من عناوين الصور باستخدام `map`
    List<String> imageUrls = widget.advModels
        .map((advModel) => advModel.image ?? "")
        .where((image) => image.isNotEmpty)
        .toList();

    return Column(
      children: [
        // _buildImageCarousel(screenSize, context, imageUrls),
        const SizedBox(height: 10),
        // _buildPageIndicator(context, imageUrls.length),
      ],
    );
  }

  // Widget _buildImageCarousel(
  //     Size screenSize, BuildContext context, List<String> imageUrls) {
  //   if (imageUrls.isEmpty) {
  //     return Container(
  //       width: screenSize.width * 0.90,
  //       height: 150,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(20),
  //         color: Colors.grey[200],
  //       ),
  //       child: Center(
  //         child: Text(
  //           'No images available',
  //           style: TextStyle(color: Colors.grey[600]),
  //         ),
  //       ),
  //     );
  //   }

  //   return Container(
  //     width: screenSize.width * 0.90,
  //     height: 150,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(20),
  //       child: CarouselSlider.builder(
  //         carouselController: _carouselController,
  //         itemCount: imageUrls.length,
  //         itemBuilder: (context, index, realIndex) {
  //           return NetworkImageLoader(
  //             imageUrl: imageUrls[index],
  //             width: double.infinity,
  //             height: double.infinity,
  //           );
  //         },
  //         options: carousel_slider.CarouselOptions(
  //           autoPlay: true,
  //           autoPlayInterval: const Duration(seconds: 20),
  //           enlargeCenterPage: true,
  //           viewportFraction: 1.0,
  //           onPageChanged: (index, reason) {
  //             setState(() {
  //               _currentIndex = index;
  //             });
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildPageIndicator(BuildContext context, int count) {
  //   if (count <= 1) return const SizedBox.shrink();

  //   return Padding(
  //     padding: const EdgeInsets.only(right: 8.0),
  //     child: AnimatedSmoothIndicator(
  //       activeIndex: _currentIndex,
  //       count: count,
  //       effect: ExpandingDotsEffect(
  //         activeDotColor: context.isDarkMode ? Colors.blue : Colors.blue,
  //         dotColor: Colors.grey,
  //         dotHeight: 8,
  //         dotWidth: 8,
  //         spacing: 8,
  //       ),
  //       onDotClicked: (index) {
  //         _carouselController.animateToPage(index);
  //       },
  //     ),
  //   );
  // }
}
