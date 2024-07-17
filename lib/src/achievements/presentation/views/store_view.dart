import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/src/achievements/presentation/views/widgets/store_view/store_app_bar.dart';
import 'package:halim/src/achievements/presentation/views/widgets/store_view/store_sections_bar.dart';

import 'widgets/store_view/coupons_section.dart';
import 'widgets/store_view/products_section.dart';

class StoreView extends StatefulWidget {
  const StoreView({super.key});

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  late final PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StoreAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${LocaleKeys.Achievements_Store_yourTotalPoints.tr()}: ',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '1265',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            StoreSectionBar(
              pageController: _pageController,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  CouponsSection(),
                  ProductsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
