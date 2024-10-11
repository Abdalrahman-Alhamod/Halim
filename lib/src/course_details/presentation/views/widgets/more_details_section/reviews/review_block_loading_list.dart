import 'package:flutter/material.dart';
import 'review_block_loading.dart';

class ReviewBlockLoadingList extends StatelessWidget {
  const ReviewBlockLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
       physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const ReviewBlockLoading(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
    );
  }
}


class ReviewBlockLoadList extends StatelessWidget {
  const ReviewBlockLoadList({super.key, this.itemCount = 10});
  final int? itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < (itemCount ?? 0); i++) content(context),
      ],
    );
  }

  content(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: ReviewBlockLoading(),
    );
  }
}
