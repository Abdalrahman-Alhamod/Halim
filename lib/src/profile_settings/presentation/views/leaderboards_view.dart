import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';

import '../../../../core/widgets/shimmer_box.dart';
import '../../../../core/widgets/toast_widget.dart';
import '../manager/cubit/profile_settings_cubit.dart';
import 'widget/leaderboards_card.dart';

import '../../../../core/themes/app_colors.dart';

class LeaderboardsView extends StatefulWidget {
  const LeaderboardsView({super.key});

  @override
  LeaderboardsViewState createState() => LeaderboardsViewState();
}

class LeaderboardsViewState extends State<LeaderboardsView> {
  late ProfileSettingsCubit profileSettingsCubit;

  @override
  void initState() {
    super.initState();
    profileSettingsCubit = context.read<ProfileSettingsCubit>();
    profileSettingsCubit.getLeadrboards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          LocaleKeys.Leaderboards_leaderboards.tr(),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: BlocBuilder<ProfileSettingsCubit, ProfileSettingsState>(
        builder: (context, state) {
          return state.maybeWhen(
            // initial: () => const Center(child: CircularProgressIndicator()),
            fetchLeadrboardsLoading: () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => ShimmerBox(
                  height: 100,
                  width: context.width * 0.8,
                  radius: 10,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
              ),
            ),
            fetchLeadrboardsFailure: (networkException) => ToastWidget(
              title: 'Error: ${networkException?.toString().substring(0, 28)}',
              color: Colors.red,
            ),
            fetchLeadrboardsSuccess: (data, message) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) => LeaderboardsCard(
                  studentLeaderboards: data[index],
                  
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
