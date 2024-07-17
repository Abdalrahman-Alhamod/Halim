import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/assets/app_images.dart';
import '../../../../../../core/translations/locale_keys.g.dart';
import 'store_product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) => StoreProductCard(
        image: AppImages.testNotebook,
        name: LocaleKeys.Achievements_Store_Test_itemName.tr(),
        description: LocaleKeys.Achievements_Store_Test_itemDesc.tr(),
        price: 200,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
    );
  }
}
