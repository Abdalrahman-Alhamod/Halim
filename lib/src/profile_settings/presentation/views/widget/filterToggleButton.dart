import 'package:flutter/material.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';

class FilterToggleButton extends StatefulWidget {
  final String filterName;
  final Function(bool) fun;
  final IconData? icon;

  const FilterToggleButton({
    Key? key,
    required this.filterName,
    required this.fun,
    this.icon,
  }) : super(key: key);

  @override
  _FilterToggleButtonState createState() => _FilterToggleButtonState();
}

class _FilterToggleButtonState extends State<FilterToggleButton> {
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
          SizedBox(width: 20),
          Icon(
            widget.icon,
            size: 28,
            color: context.isDarkMode ? Colors.white : AppColors.darkColor,
          ),
          SizedBox(width: 20),
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
                Spacer(),
                Switch(
                  value: _isActive,
                  onChanged: _onToggle,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.blue,
                ),
                SizedBox(width: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
