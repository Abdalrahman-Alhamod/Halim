import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/app_route.dart';
import '../../../../../core/utils/context_extensions.dart';

import '../../../../../core/themes/app_colors.dart';

class CardCourseReceipt extends StatefulWidget {
  final String category;
  final String name;
  final String imageUrl;
  final bool paid;
  const CardCourseReceipt({
    super.key,
    required this.category,
    required this.name,
    required this.imageUrl,
    required this.paid,
  });

  @override
  State<CardCourseReceipt> createState() => _CardCourseReceiptState();
}

class _CardCourseReceiptState extends State<CardCourseReceipt> {
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push(AppRoute.kReceiptView),
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
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.imageUrl),
                    ),
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
                        widget.name,
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
                        widget.category,
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
                            width: 80,
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
      ),
    );
  }
}
