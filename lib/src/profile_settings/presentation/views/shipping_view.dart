import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/profile_settings/presentation/views/widget/shipping_card.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';

class ShippingView extends StatefulWidget {
  const ShippingView({super.key});

  @override
  ShippingViewState createState() => ShippingViewState();
}

class ShippingViewState extends State<ShippingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text(
          LocaleKeys.Settings_Shipping_shipping.tr(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              ShippingCard(
                  valueShipping: 450,
                  idEmployee: 11,
                  dateShipping: DateTime.now(),
                  idShipping: 1),
              ShippingCard(
                  valueShipping: 3000,
                  idEmployee: 11,
                  dateShipping: DateTime.now(),
                  idShipping: 2),
              ShippingCard(
                  valueShipping: 855,
                  idEmployee: 11,
                  dateShipping: DateTime.now(),
                  idShipping: 3),
            ],
          ),
        ),
      ),
    );
  }
}
