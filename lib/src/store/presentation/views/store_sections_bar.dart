import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'store_section_button.dart';

class StoreSectionBar extends StatefulWidget {
  const StoreSectionBar({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<StoreSectionBar> createState() => _StoreSectionBarState();
}

class _StoreSectionBarState extends State<StoreSectionBar> {
  late int _index;
  @override
  void initState() {
    _index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: StoreSectionButton(
            isPressed: _index == 0,
            onPressed: () {
              setState(() {
                _index = 0;
                jumpToIndex();
              });
            },
            label: LocaleKeys.Achievements_Store_coupons.tr(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: StoreSectionButton(
            isPressed: _index == 1,
            onPressed: () {
              setState(() {
                _index = 1;
                jumpToIndex();
              });
            },
            label: LocaleKeys.Achievements_Store_products.tr(),
          ),
        ),
      ],
    );
  }

  void jumpToIndex() {
    widget.pageController.jumpToPage(
      _index,
    );
  }
}
