import 'package:flutter/material.dart';

import '../../../../../core/widgets/shimmer_box.dart';

class ProductsGirdViewLoading extends StatelessWidget {
  const ProductsGirdViewLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) {
        return const ShimmerBox(
          radius: 16,
        );
      },
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 0.65,
      ),
    );
  }
}