import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/context_extensions.dart';
import 'functions/show_product_purchase_dialog.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../../../../../../core/translations/locale_keys.g.dart';

class StoreProductCard extends StatelessWidget {
  const StoreProductCard(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.price});
  final String image;
  final String name;
  final String description;
  final int price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showProductPurchaseDialog(
          context: context,
          productName: name,
          productPrice: price,
          totalPoints: 1265,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.isDarkMode
              ? AppColors.loginWithButtonDarkColor
              : Colors.white,
          borderRadius: BorderRadius.circular(
            16,
          ),
          border: context.isDarkMode
              ? null
              : Border.all(
                  color: Colors.grey.shade400,
                ),
        ),
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$price ',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  LocaleKeys.Achievements_Store_point.tr(),
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
