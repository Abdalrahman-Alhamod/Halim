import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/translations/app_locales.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/functions/show_custom_dialog.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/widgets/custome_flat_button.dart';
import '../../../../forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';

class LanguageListTile extends StatefulWidget {
  const LanguageListTile();

  @override
  _LanguageListTileState createState() => _LanguageListTileState();
}

class _LanguageListTileState extends State<LanguageListTile> {
  late String _selectedLanguage = context.locale.toString();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            LocaleKeys.Settings_Language_mainLan.tr(),
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(height: 10),
        ListTile(
          title: Text('English'),
          leading: Radio<String>(
            value: 'en',
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value!;
                context.setLocale(Locale(AppLocales.en));
              });
            },
          ),
        ),
        ListTile(
          title: Text('العربية'),
          leading: Radio<String>(
            value: 'ar',
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value!;
                context.setLocale(Locale(AppLocales.ar));
              });
            },
          ),
        ),
        Container(height: context.height * 0.58),
        Center(
          child: CustomFlatButton(
            onPressed: () {
              showCustomDialog(
                  context: context,
                  widget: AccontSucssesDialog(
                    () {
                      print('Loading complete!');
                      GoRouter.of(context).push(AppRoute.kHome);
                    },
                  ));
            },
            title: LocaleKeys.FillYourProfile_continue.tr(),
            width: MediaQuery.of(context).size.width * 0.90,
            height: 60,
            kTextcolor: AppColors.lightFlatButtonColor,
            kBackgroundcolor: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
