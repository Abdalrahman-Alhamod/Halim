part of '../filter_bottom_sheet.dart';

class _PriceRangeSlider extends StatefulWidget {
  const _PriceRangeSlider({
    required this.onChanged,
    required this.initialStartValue,
    required this.initialEndValue,
  });
  final int initialStartValue;
  final int initialEndValue;
  final void Function(int start, int end) onChanged;
  @override
  State<_PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<_PriceRangeSlider> {
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
      min: 0,
      max: 300,
      divisions: 30,
      labels: RangeLabels(
        '\$${selectedRange.start.round().toString()}',
        '\$${selectedRange.end.round().toString()}',
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
