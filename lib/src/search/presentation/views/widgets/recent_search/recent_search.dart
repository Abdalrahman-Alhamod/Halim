import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/context_extensions.dart';

import '../../../../../../core/assets/app_svgs.dart';
import '../../../../../../core/themes/app_colors.dart';
part 'recent_search_item.dart';

class RecentSearch extends StatelessWidget {
  const RecentSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.Search_recent.tr(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                LocaleKeys.Search_clearAll.tr(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: context.isDarkMode
              ? AppColors.darkFlatButtonColor
              : Colors.grey.shade300,
        ),
        RecentSearchItem(
          title: 'CRM Managment',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: 'Full-Stack Web Developer',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: 'Learn UX User Persona',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: '3D Blender and UI/UX',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: 'Digital Entrepreneurship',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: '3D Icon Set Blender',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: 'Flutter Mobile Apps',
          onClearPressed: () {},
          onTap: () {},
        ),
        RecentSearchItem(
          title: '3D Design Illustration',
          onClearPressed: () {},
          onTap: () {},
        ),
      ],
    );
  }
}
