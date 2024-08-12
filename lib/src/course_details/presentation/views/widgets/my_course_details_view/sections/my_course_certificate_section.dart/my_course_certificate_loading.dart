
import 'package:flutter/material.dart';

import '../../../../../../../../core/widgets/bottom_sheet_button_loading.dart';
import '../../../../../../../../core/widgets/shimmer_box.dart';

class MyCourseCertificateLoading extends StatelessWidget {
  const MyCourseCertificateLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ShimmerBox(),
          ),
          SizedBox(
            height: 120,
          ),
        ],
      ),
      bottomSheet: BottomSheetButtonLoading(),
    );
  }
}
