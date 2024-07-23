import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/context_extensions.dart';
import 'widgets/sort_by_list.dart';

import '../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../core/widgets/custome_elevated_button.dart';

class SortByBottomSheet extends StatefulWidget {
  const SortByBottomSheet({
    super.key,
  });

  @override
  State<SortByBottomSheet> createState() => _SortByBottomSheetState();
}

class _SortByBottomSheetState extends State<SortByBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          color:
              context.isDarkMode ? Colors.grey.shade800 : Colors.grey.shade300,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Divider(
              height: 20,
              color: Colors.grey,
              thickness: 2,
              indent: context.width * 0.42,
              endIndent: context.width * 0.42,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              LocaleKeys.Search_SearchBy_sortBy.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
            SortByList(
              key: UniqueKey(),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    title: LocaleKeys.Search_reset.tr(),
                    elevation: 0,
                    backgroundColor: context.isDarkMode
                        ? Colors.grey.shade800
                        : Colors.grey.shade600,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    title: LocaleKeys.Search_SearchBy_sort.tr(),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
