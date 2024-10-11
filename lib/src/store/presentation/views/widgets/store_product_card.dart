import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/network_image_loader.dart';
import '../../../data/models/store_item_model.dart';
import '../../../../../core/utils/context_extensions.dart';
import 'functions/show_product_purchase_dialog.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/translations/locale_keys.g.dart';

class StoreProductCard extends StatelessWidget {
  const StoreProductCard({
    super.key,
    required this.storeItemModel,
  });
  final StoreItemModel storeItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showProductPurchaseDialog(
          context: context,
          productName: storeItemModel.name ?? '',
          productPrice: storeItemModel.pointsCost ?? 0,
          totalPoints: 1265,
          itemId: storeItemModel.id ?? 0,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: NetworkImageLoader(
                  imageUrl: storeItemModel.image ?? '',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: AutoSizeText(
                storeItemModel.name ?? '',
                maxLines: 2,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              flex: 4,
              child: AutoSizeText(
                storeItemModel.description ?? '',
                textAlign: TextAlign.center,
                maxLines: 4,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${storeItemModel.pointsCost ?? 0} ',
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
