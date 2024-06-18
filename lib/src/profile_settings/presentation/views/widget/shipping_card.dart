import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import '../../../../../core/themes/app_colors.dart';

class ShippingCard extends StatefulWidget {
  final double valueShipping;
  final int idEmployee;
  final DateTime dateShipping;
  final int idShipping;

  const ShippingCard({
    super.key,
    required this.valueShipping,
    required this.idEmployee,
    required this.dateShipping,
    required this.idShipping,
  });

  @override
  State<ShippingCard> createState() => _ShippingCardState();
}

class _ShippingCardState extends State<ShippingCard> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd-MM-yyyy').format(widget.dateShipping);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 147,
              decoration: BoxDecoration(
                color: context.isDarkMode
                    ? AppColors.loginWithButtonDarkColor
                    : AppColors.lightFlatButtonColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(children: [
                      AutoSizeText(
                        '${LocaleKeys.Settings_Shipping_numShip.tr()}',
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.white70
                              : Colors.black45,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 80,
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 6,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: AppColors.primaryColor,
                        ),
                        child: Center(
                          child: AutoSizeText(
                            '${widget.idShipping}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                            maxFontSize: 16,
                            minFontSize: 14,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ]),

                    // Row(children: [
                    //   AutoSizeText(
                    //     '${LocaleKeys.Settings_Shipping_numShip.tr()}',
                    //     style: TextStyle(
                    //       color: context.isDarkMode
                    //           ? Colors.white70
                    //           : Colors.black45,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //     overflow: TextOverflow.ellipsis,
                    //     maxFontSize: 16,
                    //     minFontSize: 14,
                    //     maxLines: 1,
                    //   ),
                    //   const Spacer(),
                    //   AutoSizeText(
                    //     '${widget.idShipping}',
                    //     style: TextStyle(
                    //       color: context.isDarkMode ? Colors.white : Colors.black,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //     overflow: TextOverflow.ellipsis,
                    //     maxFontSize: 16,
                    //     minFontSize: 14,
                    //     maxLines: 1,
                    //   ),
                    // ]),
                    SizedBox(height: 12),
                    Row(children: [
                      AutoSizeText(
                        '${LocaleKeys.Settings_Shipping_valueShip.tr()}',
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.white70
                              : Colors.black45,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                      const Spacer(),
                      AutoSizeText(
                        '${widget.valueShipping} \$',
                        style: TextStyle(
                          color:
                              context.isDarkMode ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      AutoSizeText(
                        '${LocaleKeys.Settings_Shipping_idEmp.tr()}',
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.white70
                              : Colors.black45,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                      const Spacer(),
                      AutoSizeText(
                        '${widget.idEmployee}',
                        style: TextStyle(
                          color:
                              context.isDarkMode ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      AutoSizeText(
                        '${LocaleKeys.Settings_Shipping_dateShip.tr()}',
                        style: TextStyle(
                          color: context.isDarkMode
                              ? Colors.white70
                              : Colors.black45,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                      const Spacer(),
                      AutoSizeText(
                        formattedDate,
                        style: TextStyle(
                          color:
                              context.isDarkMode ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: 16,
                        minFontSize: 14,
                        maxLines: 1,
                      ),
                    ]),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
