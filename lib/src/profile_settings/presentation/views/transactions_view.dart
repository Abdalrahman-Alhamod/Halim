import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/core/widgets/shimmer_box.dart';
import 'package:halim/core/widgets/toast_widget.dart';
import 'package:halim/src/profile_settings/presentation/manager/cubit/profile_settings_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'widget/transactions_card.dart';

class TransactionsView extends StatefulWidget {
  const TransactionsView({super.key});

  @override
  TransactionsViewState createState() => TransactionsViewState();
}

class TransactionsViewState extends State<TransactionsView> {
  late ProfileSettingsCubit profileSettingsCubit;

  @override
  void initState() {
    super.initState();
    profileSettingsCubit = context.read<ProfileSettingsCubit>();
    profileSettingsCubit.getTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text(
          LocaleKeys.Settings_Recharge_rechargeOperations.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: BlocBuilder<ProfileSettingsCubit, ProfileSettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            // initial: () => const Center(child: CircularProgressIndicator()),
            fetchTransactionsLoading: () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount:
                    context.read<ProfileSettingsCubit>().transactions.length,
                itemBuilder: (context, index) => ShimmerBox(
                  height: 155,
                  width: context.width * 0.8,
                  radius: 15.5,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            ),
            fetchTransactionsFailure: (networkException) => ToastWidget(
              title: 'Error: ${networkException?.toString().substring(0, 28)}',
              color: Colors.red,
            ),
            fetchTransactionsSuccess: (data, message) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) => TransactionsCard(
                  transactionModel: data[index],
                ),
              ),
            ),orElse: () =>Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount:
                    context.read<ProfileSettingsCubit>().transactions.length,
                itemBuilder: (context, index) => ShimmerBox(
                  height: 155,
                  width: context.width * 0.8,
                  radius: 15.5,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
