import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/translations/app_locales.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class LanguageListTile extends StatefulWidget {
  const LanguageListTile({super.key});

  @override
  LanguageListTileState createState() => LanguageListTileState();
}

class LanguageListTileState extends State<LanguageListTile> {
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
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(height: 10),
        ListTile(
          title: const Text('English'),
          leading: Radio<String>(
            value: 'en',
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value!;
                context.setLocale(const Locale(AppLocales.en));
              });
            },
          ),
        ),
        ListTile(
          title: const Text('العربية'),
          leading: Radio<String>(
            value: 'ar',
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value!;
                context.setLocale(const Locale(AppLocales.ar));
              });
            },
          ),
        ),
      ],
    );
  }
}
