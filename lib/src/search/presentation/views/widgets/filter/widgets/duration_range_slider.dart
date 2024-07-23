part of '../filter_bottom_sheet.dart';

class _DurationRangeSlider extends StatefulWidget {
  const _DurationRangeSlider({super.key, required this.onChanged});
  final void Function(int start, int end) onChanged;
  @override
  State<_DurationRangeSlider> createState() => _DurationRangeSliderState();
}

class _DurationRangeSliderState extends State<_DurationRangeSlider> {
  var selectedRange = const RangeValues(10, 30);
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      min: 1,
      max: 100,
      divisions: 20,
      labels: RangeLabels(
        '${selectedRange.start.round().toString()} ${LocaleKeys.Search_Filter_h.tr()}',
        '${selectedRange.end.round().toString()} ${LocaleKeys.Search_Filter_h.tr()}',
      ),
      values: selectedRange,
      onChanged: (RangeValues newRange) {
        setState(() {
          selectedRange = newRange;
          widget.onChanged.call(newRange.start.round(), newRange.end.round());
        });
      },
    );
  }
}
