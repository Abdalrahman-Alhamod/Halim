import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/src/search/presentation/views/widgets/filter/level_bar/data/level_bar_item.dart';
import 'package:halim/src/search/presentation/views/widgets/filter/level_bar/level_button.dart';

class LevelBar extends StatefulWidget {
  const LevelBar({super.key, this.startIndex = 0, required this.onChanged});
  final int startIndex;
  final void Function(String value) onChanged;
  @override
  State<LevelBar> createState() => _LevelBarState();
}

class _LevelBarState extends State<LevelBar> {
  late int _index;
  late List<LevelBarItem> items;
  @override
  void initState() {
    _index = widget.startIndex;
    items = [
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_all.tr(),
        type: Level.all,
      ),
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_beginner.tr(),
        type: Level.begginer,
      ),
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_intermediate.tr(),
        type: Level.intermediate,
      ),
      LevelBarItem(
        label: LocaleKeys.CourseDetails_Level_advanced.tr(),
        type: Level.advanced,
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              LevelButton(
                onPressed: () {
                  setState(() {
                    _index = index;
                    widget.onChanged.call(items[index].type.toString());
                  });
                },
                isPressed: _index == index,
                type: items[index].type,
                label: items[index].label,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
