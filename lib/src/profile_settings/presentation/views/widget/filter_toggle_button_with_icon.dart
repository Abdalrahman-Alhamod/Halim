import 'package:flutter/material.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/context_extensions.dart';

class FilterToggleButtonWithIcon extends StatefulWidget {
  final String filterName;
  final Function(bool) fun;
  final IconData? icon;

  const FilterToggleButtonWithIcon({
    super.key,
    required this.filterName,
    required this.fun,
    this.icon,
  });

  @override
  FilterToggleButtonWithIconState createState() =>
      FilterToggleButtonWithIconState();
}

class FilterToggleButtonWithIconState
    extends State<FilterToggleButtonWithIcon> {
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
          Icon(
            widget.icon,
            size: 28,
            color: context.isDarkMode ? Colors.white : AppColors.darkColor,
          ),
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
                  value: context.isDarkMode,
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
