import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/core/widgets/toast_widget.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/utils/navigation_extra_keys.dart';
import '../manager/cubit/profile_settings_cubit.dart';
import 'widget/course_card_trans.dart';
import '../../../../core/themes/app_colors.dart';

class PaymentsView extends StatefulWidget {
  const PaymentsView({super.key});

  @override
  PaymentsViewState createState() => PaymentsViewState();
}

class PaymentsViewState extends State<PaymentsView> {
  late ProfileSettingsCubit profileSettingsCubit;

  @override
  void initState() {
    super.initState();
    profileSettingsCubit = context.read<ProfileSettingsCubit>();
    profileSettingsCubit.getReceipt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Settings_Payments_payments.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: BlocBuilder<ProfileSettingsCubit, ProfileSettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            // initial: () => const Center(child: CircularProgressIndicator()),
            fetchReceiptLoading: () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => ShimmerBox(
                  height: 155,
                  width: context.width * 0.8,
                  radius: 32,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            ),
            fetchReceiptFailure: (networkException) => ToastWidget(
              title: 'Error: ${networkException?.toString().substring(0, 28)}',
              color: Colors.red,
            ),
            fetchReceiptSuccess: (data, message) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) => CardCourseReceipt(
                  receipt: data[index],
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRoute.kReceiptView,
                      extra: {
                        NavKeys.receiptModel: data[index],
                      },
                    );
                  },
                ),
              ),
            ),
            orElse: () => ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => ShimmerBox(
                height: 155,
                width: context.width * 0.8,
                radius: 32,
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}
