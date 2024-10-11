import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../auth/presentation/manager/auth_cubit/auth_cubit.dart';
import '../../data/models/student_points_model.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../manager/store_cubit/store_cubit.dart';
import 'widgets/store_app_bar.dart';
import 'widgets/store_sections_bar.dart';

import 'widgets/coupons_section.dart';
import 'widgets/products_section.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    StudentPointsModel studentPointsModel =
        context.read<StoreCubit>().studentPointsModel ??
            const StudentPointsModel();
    int studentId = context.read<AuthCubit>().user?.id ?? 0;
    context.read<StoreCubit>().getStudentPoints(studentId: studentId);
    return Scaffold(
      appBar: const StoreAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${LocaleKeys.Achievements_Store_yourTotalPoints.tr()}: ',
                  style: const TextStyle(fontSize: 24),
                ),
                BlocConsumer<StoreCubit, StoreState>(
                  buildWhen: context.read<StoreCubit>().buildStudentPointsWhen,
                  listenWhen:
                      context.read<StoreCubit>().listenStudentPointsWhen,
                  listener: context.read<StoreCubit>().listenStudentPoints,
                  builder: (context, state) {
                    state.whenOrNull(
                      fetchStudentPointsSuccess:
                          (stateStudentPointsModel, message) {
                        studentPointsModel = stateStudentPointsModel;
                      },
                    );
                    return context.read<StoreCubit>().buildStudentPoints(
                          context: context,
                          state: state,
                          child: Text(
                            '${studentPointsModel.pointsBalance ?? 0}',
                            style: const TextStyle(
                              fontSize: 26,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            StoreSectionBar(
              pageController: _pageController,
            ),
            const SizedBox(
              height: 20,
            ),
            BlocListener<StoreCubit, StoreState>(
              listenWhen: context.read<StoreCubit>().listenPurchaseItemWhen,
              listener: context.read<StoreCubit>().listenPurchaseItem,
              child: Expanded(
                child: PageView(
                  controller: _pageController,
                  children: const [
                    CouponsSection(),
                    ProductsSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
