import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/search/presentation/views/widgets/sortBy/widgets/sort_by_list.dart';

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
        color: Theme.of(context).colorScheme.background,
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
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Divider(
              height: 20,
              color: Colors.grey,
              thickness: 2,
              indent: context.width * 0.42,
              endIndent: context.width * 0.42,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sort By',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 20,
              color: Colors.grey,
            ),
            SortByList(
              key: UniqueKey(),
              onChanged: (value) {},
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 20,
              color: Colors.grey,
            ),
            SizedBox(
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
                    title: 'Reset',
                    elevation: 0,
                    backgroundColor: Colors.grey.shade800,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    title: 'Sort',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
