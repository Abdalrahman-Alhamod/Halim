import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/widgets/network_image_loader.dart';
import 'package:halim/src/profile_settings/data/models/receipt_model.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourseReceipt extends StatefulWidget {
  final ReceiptModel receipt;
  final void Function() onTap;
  const CardCourseReceipt({
    super.key,
    required this.receipt,
    required this.onTap,
  });

  @override
  State<CardCourseReceipt> createState() => _CardCourseReceiptState();
}

class _CardCourseReceiptState extends State<CardCourseReceipt> {
  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : AppColors.lightFlatButtonColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                child: NetworkImageLoader(
                  imageUrl: widget.receipt.course!.image ?? '',
                  height: 110,
                  width: 110,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    AutoSizeText(
                      widget.receipt.course?.title ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxFontSize: 20,
                      minFontSize: 18,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 15),
                    AutoSizeText(
                      widget.receipt.course?.subcategory?.name ?? '',
                      style: TextStyle(
                        color: context.isDarkMode
                            ? Colors.white70
                            : Colors.black45,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxFontSize: 18,
                      minFontSize: 16,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 12.5),
                    Row(
                      children: [
                        const SizedBox(
                          width: 100,
                        ),
                        Container(
                          height: 35,
                          width: 90,
                          decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: GestureDetector(
                              child: AutoSizeText(
                                LocaleKeys.Settings_Payments_receipt.tr(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxFontSize: 13,
                                minFontSize: 10,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
