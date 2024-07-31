import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/widgets/shimmer_box.dart';

class CourseMainDetailsSectionLoading extends StatelessWidget {
  const CourseMainDetailsSectionLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 228,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerBox(
            height: 40,
            width: context.width * 0.9,
      
          ),
          ShimmerBox(
            height: 30,
            width: context.width * 0.7,
      
          ),
          ShimmerBox(
            height: 40,
            width: context.width * 0.6,
         
          ),
          ShimmerBox(
            height: 30,
            width: context.width * 0.9,
       
          )
        ],
      ),
    );
  }
}
