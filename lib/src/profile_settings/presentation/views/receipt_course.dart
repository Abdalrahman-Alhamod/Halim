import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/date_time_helper.dart';
import '../../data/models/receipt_model.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/context_extensions.dart';

import '../../../../core/themes/app_colors.dart';

class ReceiptView extends StatefulWidget {
  const ReceiptView({super.key, required this.receiptModel});
  final ReceiptModel receiptModel;
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
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
        ),
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Icon(
                  Icons.qr_code_2,
                  size: 200,
                ),
                Text('${widget.receiptModel.user?.id}'),
                const SizedBox(height: 20),
                Container(
                  height: 85,
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
                            LocaleKeys.Settings_Payments_Receipt_name.tr(),
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
                            widget.receiptModel.user?.firstName ?? '',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxFontSize: 16,
                            minFontSize: 14,
                            maxLines: 1,
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          AutoSizeText(
                            LocaleKeys.Settings_Payments_Receipt_email.tr(),
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
                            widget.receiptModel.user?.email ?? '',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
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
                const SizedBox(height: 25),
                Container(
                  height: 80,
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
                            LocaleKeys.Settings_Payments_Receipt_course.tr(),
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
                            widget.receiptModel.course?.title ?? '',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxFontSize: 16,
                            minFontSize: 14,
                            maxLines: 1,
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          AutoSizeText(
                            LocaleKeys.Settings_Payments_Receipt_category.tr(),
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
                            widget.receiptModel.course?.subcategory?.name ?? '',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
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
                const SizedBox(height: 25),
                Container(
                  height: 190,
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
                            LocaleKeys.Settings_Payments_Receipt_transaction
                                .tr(),
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
                            '${widget.receiptModel.user?.id ?? ''}',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxFontSize: 16,
                            minFontSize: 14,
                            maxLines: 1,
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          AutoSizeText(
                            LocaleKeys.Settings_Payments_Receipt_priceBefor
                                .tr(),
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
                            '${widget.receiptModel.priceBeforeDiscount ?? ''} \$',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxFontSize: 16,
                            minFontSize: 14,
                            maxLines: 1,
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          AutoSizeText(
                            LocaleKeys.Settings_Payments_Receipt_priceAfter
                                .tr(),
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
                            '${widget.receiptModel.course?.price} \$',
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxFontSize: 16,
                            minFontSize: 14,
                            maxLines: 1,
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          AutoSizeText(
                            LocaleKeys.Settings_Payments_Receipt_date.tr(),
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
                            DateTimeHelper.format(
                              widget.receiptModel.createdAt ?? DateTime.now(),
                              DateTimeFormat.onlyDate,
                            ),
                            style: TextStyle(
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxFontSize: 16,
                            minFontSize: 14,
                            maxLines: 1,
                          ),
                        ]),
                        const SizedBox(height: 10),
                        Row(children: [
                          AutoSizeText(
                            LocaleKeys.Settings_Payments_Receipt_status.tr(),
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
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: AppColors.primaryColor,
                            ),
                            child: Center(
                              child: AutoSizeText(
                                LocaleKeys.Settings_Payments_paid.tr(),
                                // : LocaleKeys.Settings_Payments_unpaid.tr(),
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
          ),
        ));
  }
}
