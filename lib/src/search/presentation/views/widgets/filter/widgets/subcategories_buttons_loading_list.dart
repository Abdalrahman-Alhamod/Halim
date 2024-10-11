import 'package:flutter/material.dart';
import '../../../../../../../core/widgets/shimmer_box.dart';

class SubcategoriesButtonsLoadingList extends StatelessWidget {
  const SubcategoriesButtonsLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const ScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: const ShimmerBox(
            height: 40,
            width: 80,
          )),
      separatorBuilder: (context, index) => const SizedBox(
        width: 8,
      ),
    );
  }
}
