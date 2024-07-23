part of '../filter_bottom_sheet.dart';

class _PriceRangeSlider extends StatefulWidget {
  const _PriceRangeSlider({
    super.key,
    required this.onChanged,
  });
  final void Function(int start, int end) onChanged;
  @override
  State<_PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<_PriceRangeSlider> {
  var selectedRange = const RangeValues(50, 150);
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
