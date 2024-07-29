part of '../filter_bottom_sheet.dart';

class _DurationRangeSlider extends StatefulWidget {
  const _DurationRangeSlider({
    required this.onChanged,
    required this.initialStartValue,
    required this.initialEndValue,
  });
  final void Function(int start, int end) onChanged;
  final int initialStartValue;
  final int initialEndValue;
  @override
  State<_DurationRangeSlider> createState() => _DurationRangeSliderState();
}

class _DurationRangeSliderState extends State<_DurationRangeSlider> {
  late RangeValues selectedRange;
  @override
  void initState() {
    selectedRange = RangeValues(
      widget.initialStartValue.toDouble(),
      widget.initialEndValue.toDouble(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      min: 1,
      max: 300,
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
