part of '../../search_results.dart';

class _SearchByBar extends StatefulWidget {
  const _SearchByBar(this.onChange);
  final void Function(int index) onChange;
  @override
  State<_SearchByBar> createState() => _SearchByBarState();
}

class _SearchByBarState extends State<_SearchByBar> {
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
          child: _SearchByButton(
            isPressed: _index == 0,
            onPressed: () {
              setState(() {
                _index = 0;
                widget.onChange.call(_index);
              });
            },
            label: LocaleKeys.Search_courses.tr(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 1,
          child: _SearchByButton(
            isPressed: _index == 1,
            onPressed: () {
              setState(() {
                _index = 1;
                widget.onChange.call(_index);
              });
            },
            label: LocaleKeys.Search_mentors.tr(),
          ),
        ),
      ],
    );
  }
}
