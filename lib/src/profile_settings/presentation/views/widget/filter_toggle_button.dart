import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/context_extensions.dart';

class FilterToggleButton extends StatefulWidget {
  final String filterName;
  final Function(bool) fun;

  const FilterToggleButton({
    super.key,
    required this.filterName,
    required this.fun,
  });

  @override
  FilterToggleButtonState createState() => FilterToggleButtonState();
}

class FilterToggleButtonState extends State<FilterToggleButton> {
  bool _isActive = false;

  void _onToggle(bool newValue) {
    setState(() {
      _isActive = newValue;
    });
    widget.fun(_isActive);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      color: context.isDarkMode ? AppColors.darkColor : Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 20),
          Expanded(
            child: Row(
              children: [
                Text(
                  widget.filterName,
                  style: TextStyle(
                    color:
                        context.isDarkMode ? Colors.white : AppColors.darkColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Switch(
                  value: _isActive,
                  onChanged: _onToggle,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.blue,
                ),
                const SizedBox(width: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
