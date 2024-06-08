import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../core/translations/locale_keys.g.dart';

class ListTileEmailPhone extends StatefulWidget {
  const ListTileEmailPhone();

  @override
  _ListTileEmailPhoneState createState() => _ListTileEmailPhoneState();
}

bool isItemSelectedOne = false;
bool isItemSelectedTwo = false;

class _ListTileEmailPhoneState extends State<ListTileEmailPhone> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            leading: Container(
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                color: AppColors.lightFlatButtonColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.sms_rounded,
                size: 25,
                color: AppColors.primaryColor,
              ),
            ),
            enabled: true,
            title: Text(
              LocaleKeys.ForgotPassword_viaSms.tr(),
              style: TextStyle(
                color: context.isDarkMode ? Colors.grey[400] : Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            subtitle: Text(
              '+1 111 *** **9',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isItemSelectedOne ? Colors.blue : Colors.grey.shade200,
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            dense: true,
            onTap: () {
              setState(() {
                isItemSelectedOne = !isItemSelectedOne;
              });
            },
          ),
        ),
        //Container(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            leading: Container(
              width: 160,
              height: 160,
              decoration: const BoxDecoration(
                color: AppColors.lightFlatButtonColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.email,
                size: 28,
                color: AppColors.primaryColor,
              ),
            ),
            enabled: true,
            title: Text(
              LocaleKeys.ForgotPassword_viaEmail.tr(),
              style: TextStyle(
                color: context.isDarkMode ? Colors.grey[400] : Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            subtitle: Text(
              'and**ley@gmail.com',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isItemSelectedTwo ? Colors.blue : Colors.grey.shade200,
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            dense: true,
            onTap: () {
              setState(() {
                isItemSelectedTwo = !isItemSelectedTwo;
              });
            },
          ),
        ),
      ],
    );
  }
}
