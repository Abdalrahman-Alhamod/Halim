import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';
import '../../../../../core/themes/app_colors.dart';

class ReceiptWidget extends StatefulWidget {
  final String name;
  final String email;
  final String nameCourse;
  final String category;
  final int transactionID;
  final int priceBefore;
  final int priceAfter;
  final int discount;
  final DateTime date;
  final bool paid;

  const ReceiptWidget({
    super.key,
    required this.name,
    required this.email,
    required this.nameCourse,
    required this.category,
    required this.transactionID,
    required this.priceBefore,
    required this.priceAfter,
    required this.discount,
    required this.date,
    required this.paid,
  });

  @override
  State<ReceiptWidget> createState() => _ReceiptWidgetState();
}

class _ReceiptWidgetState extends State<ReceiptWidget> {
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd-MM-yyyy').format(widget.date);

    return SingleChildScrollView(
      child: Column(
        children: [
          Icon(
            Icons.qr_code_2,
            size: 200,
          ),
          Text('${widget.transactionID}'),
          SizedBox(height: 20),
          Container(
            height: 90,
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
                      '${LocaleKeys.Settings_Payments_Receipt_name.tr()}',
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
                      '${widget.name}',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_email.tr()}',
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
                      '${widget.email}',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
          ),
          SizedBox(height: 25),
          Container(
            height: 90,
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
                      '${LocaleKeys.Settings_Payments_Receipt_course.tr()}',
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
                      '${widget.nameCourse}',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_category.tr()}',
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
                      '${widget.category}',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
          ),
          SizedBox(height: 25),
          Container(
            height: 220,
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
                      '${LocaleKeys.Settings_Payments_Receipt_transaction.tr()}',
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
                      '${widget.transactionID}',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_priceBefor.tr()}',
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
                      '${widget.priceBefore} \$',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_discount.tr()}',
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
                      '${widget.discount} \$',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_priceAfter.tr()}',
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
                      '${widget.priceAfter} \$',
                      style: TextStyle(
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_date.tr()}',
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
                        color: context.isDarkMode ? Colors.white : Colors.black,
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
                      '${LocaleKeys.Settings_Payments_Receipt_status.tr()}',
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
                          '${widget.paid ? '${LocaleKeys.Settings_Payments_paid.tr()}' : '${LocaleKeys.Settings_Payments_unpaid.tr()}'}',
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

