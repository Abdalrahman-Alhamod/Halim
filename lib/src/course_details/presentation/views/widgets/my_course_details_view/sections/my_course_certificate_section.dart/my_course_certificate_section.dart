import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../../../core/utils/context_extensions.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../../../core/widgets/bottom_sheet_button.dart';

class MyCourseCertificateSection extends StatelessWidget {
  const MyCourseCertificateSection({super.key, required this.certificateUrl});
  final String certificateUrl;
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: context.height * .6,
              child: SfPdfViewer.network(
                certificateUrl,
                enableDoubleTapZooming: false,
              ),
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
        bottomSheet: BottomSheetButton(
          title: LocaleKeys.CourseDetails_MyCourse_downloadCertificate.tr(),
          onPressed: () async {
            await launchUrl(Uri.parse(certificateUrl));
          },
        ),
      ),
    );
  }
}
