import 'package:flutter/material.dart';
import 'widgets/mentor_review_view/mentor_reviews_app_bar.dart';
import 'widgets/mentor_review_view/mentor_reviews_body.dart';

class MentorReviewsView extends StatelessWidget {
  const MentorReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MentorReviewsAppBar(),
      body: MentorReviewsBody(),
    );
  }
}