import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/translations/locale_keys.g.dart';

class ListTileEmailPhone extends StatefulWidget {
  const ListTileEmailPhone({super.key});

  @override
  ListTileEmailPhoneState createState() => ListTileEmailPhoneState();
}

class ListTileEmailPhoneState extends State<ListTileEmailPhone> {
  bool isItemSelectedOne = false;
  bool isItemSelectedTwo = false;

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
                if (isItemSelectedOne) {
                  isItemSelectedTwo = false;
                }
              });
            },
          ),
        ),
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
                if (isItemSelectedTwo) {
                  isItemSelectedOne = false;
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
