// ignore_for_file: unused_field

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:halim/src/profile_settings/domain/repos/profile_settings_repo.dart';

part 'profile_settings_state.dart';
part 'profile_settings_cubit.freezed.dart';

class ProfileSettingsCubit extends Cubit<ProfileSettingsState> {
  ProfileSettingsCubit(this._profileSettingsRepo)
      : super(const ProfileSettingsState.initial());

  final ProfileSettingsRepo _profileSettingsRepo;
}
