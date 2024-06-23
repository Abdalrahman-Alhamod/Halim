import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/profile_settings/presentation/views/widget/receipt_widget.dart';

import '../../../../core/themes/app_colors.dart';

class ReceiptView extends StatefulWidget {
  const ReceiptView({super.key});

  @override
  ReceiptViewState createState() => ReceiptViewState();
}

class ReceiptViewState extends State<ReceiptView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text(
          LocaleKeys.Settings_Payments_Receipt_receipt.tr(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        actions: <Widget>[
          PopupMenuButton<String>(
            color: context.isDarkMode
                ? AppColors.loginWithButtonDarkColor
                : AppColors.lightFlatButtonColor,
            onSelected: (String result) {
              if (result == 'download') {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Download selected'),
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'download',
                child: Row(
                  children: [
                    Text(LocaleKeys.Settings_Payments_Receipt_download.tr()),
                    Spacer(),
                    Icon(Icons.download,
                        color: context.isDarkMode
                            ? Colors.white
                            : AppColors.darkColor),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            ReceiptWidget(
              name: 'Alaa Aldeen Lababedi',
              email: 'master.alaa.aldeen@gmail.com',
              nameCourse: 'Intro UI/UX',
              category: 'UI/UX',
              transactionID: 11235,
              priceBefore: 480,
              priceAfter: 350,
              discount: 130,
              date: DateTime.now(),
              paid: true,
            )
          ]),
        ),
      ),
    );
  }
}
