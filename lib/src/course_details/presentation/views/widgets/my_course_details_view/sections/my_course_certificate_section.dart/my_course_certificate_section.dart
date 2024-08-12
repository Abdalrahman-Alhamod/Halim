import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/test/app_test.dart';
import 'package:halim/core/widgets/refresh_base.dart';
import 'package:halim/src/course_details/data/models/certificate_model.dart';
import 'package:halim/src/course_details/presentation/manager/course_details_cubit/course_details_cubit.dart';
import '../../../../../../../../core/functions/open_url.dart';
import '../../../../../../../../core/translations/locale_keys.g.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../../../../../../../../core/widgets/bottom_sheet_button.dart';

class MyCourseCertificateSection extends StatelessWidget {
  const MyCourseCertificateSection({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CourseDetailsCubit>().getCourseCertificate();
    CertificateModel certificateModel =
        context.read<CourseDetailsCubit>().courseCertificate ??
            const CertificateModel();
    return RefreshBase(
      onRefresh: () async {
        context.read<CourseDetailsCubit>().getCourseCertificate();
      },
      child: BlocConsumer<CourseDetailsCubit, CourseDetailsState>(
        buildWhen:
            context.read<CourseDetailsCubit>().buildCourseCertificateWhen,
        listenWhen:
            context.read<CourseDetailsCubit>().listenCourseCertificateWhen,
        listener: context.read<CourseDetailsCubit>().listenCourseCertificate,
        builder: (context, state) {
          state.whenOrNull(
            fetchCourseCertificateSuccess: (data, message) {
              certificateModel = data;
            },
          );
          return context.read<CourseDetailsCubit>().buildCourseCertificate(
                context: context,
                state: state,
                child: Scaffold(
                  body: Column(
                    children: [
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 24.0),
                      //   child: Image.asset(AppImages.testCertificate),
                      // ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: SfPdfViewer.network(
                          certificateModel.url ?? AppTest.testPdfUrl,
                          enableDoubleTapZooming: false,
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                    ],
                  ),
                  bottomSheet: BottomSheetButton(
                    title: LocaleKeys.CourseDetails_MyCourse_downloadCertificate
                        .tr(),
                    onPressed: () {
                      openUrl(
                        context: context,
                        path: certificateModel.url ?? AppTest.testPdfUrl,
                      );
                    },
                  ),
                ),
              );
        },
      ),
    );
  }
}
