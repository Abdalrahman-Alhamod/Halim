import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/constants/app_constrains.dart';
import 'package:halim/core/utils/context_extensions.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';
part './widgets/confirm_email_view_widgets/confirm_email_app_bar.dart';
part 'widgets/confirm_email_view_widgets/confirm_email_body.dart';

class ConfirmEmailView extends StatelessWidget {
  const ConfirmEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _ConfirmEmailAppBar(),
      body: _ConfirmEmailBody(),
    );
  }
}
