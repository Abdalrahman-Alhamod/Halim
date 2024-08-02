// ignore_for_file: unused_field

import 'package:halim/src/profile_settings/data/data_sources/profile_settings_local_data_source.dart';
import 'package:halim/src/profile_settings/data/data_sources/profile_settings_remote_data_source.dart';
import 'package:halim/src/profile_settings/domain/repos/profile_settings_repo.dart';

class ProfileSettingsRepolmpl extends ProfileSettingsRepo {
  final ProfileSettingsRemoteDataSource _profileSettingsRemoteDataSource;
  final ProfileSettingsLocalDataSource _profileSettingsLocalDataSource;

  ProfileSettingsRepolmpl(this._profileSettingsLocalDataSource,
      this._profileSettingsRemoteDataSource);
}
