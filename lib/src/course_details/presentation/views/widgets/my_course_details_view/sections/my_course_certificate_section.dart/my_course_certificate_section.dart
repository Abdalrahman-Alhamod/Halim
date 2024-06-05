import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../../../../../../../core/widgets/bottom_sheet_button.dart';

class MyCourseCertificateSection extends StatelessWidget {
  const MyCourseCertificateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .8,
      child: Scaffold(
        body: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 24.0),
            //   child: Image.asset(AppImages.testCertificate),
            // ),
            SizedBox(
              height: context.height * .6,
              child: SfPdfViewer.network(
                'https://www.soundczech.cz/temp/lorem-ipsum.pdf',
                enableDoubleTapZooming: false,
              ),
            ),
            SizedBox(
              height: 120,
            ),
          ],
        ),
        bottomSheet: BottomSheetButton(
          title: 'Downlaod Certificate',
          onPressed: () {},
        ),
      ),
    );
  }
}
