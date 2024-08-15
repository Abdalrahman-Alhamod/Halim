import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'store_app_bar.dart';
import 'store_sections_bar.dart';

import 'coupons_section.dart';
import 'products_section.dart';

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
      appBar: const StoreAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${LocaleKeys.Achievements_Store_yourTotalPoints.tr()}: ',
                  style: const TextStyle(fontSize: 24),
                ),
                const Text(
                  '1265',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            StoreSectionBar(
              pageController: _pageController,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: const [
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
