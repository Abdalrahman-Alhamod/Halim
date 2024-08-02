import 'package:flutter/material.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/utils/context_extensions.dart';

class BirthdayCard extends StatefulWidget {
  const BirthdayCard({super.key, required this.onChanged});
  final void Function(String date) onChanged;
  @override
  BirthdayCardState createState() => BirthdayCardState();
}

class BirthdayCardState extends State<BirthdayCard> {
  DateTime? _selectedDate;
  late final TextEditingController _controller;
  DateTime? _tempSelectedDate;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(LocaleKeys.FillYourProfile_dateOfBirth.tr()),
          content: SizedBox(
            height: 300,
            width: 300,
            child: CalendarDatePicker(
              initialDate: _selectedDate,
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              onDateChanged: (date) {
                _tempSelectedDate = date;
                widget.onChanged.call( DateFormat('yyyy-MM-dd', 'en').format(_tempSelectedDate!));
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(LocaleKeys.Buttons_cancel.tr()),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _selectedDate = _tempSelectedDate;

                  _controller.text =
                      DateFormat('yyyy-MM-dd', 'en').format(_selectedDate!);
                });
                Navigator.of(context).pop(_selectedDate);
              },
              child: Text(LocaleKeys.Buttons_ok.tr()),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () => _selectDate(context),
        child: AbsorbPointer(
          child: TextField(
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: context.isDarkMode ? Colors.white : Colors.black),
            controller: _controller,
            readOnly: true,
            decoration: InputDecoration(
              hintText: LocaleKeys.FillYourProfile_dateOfBirth.tr(),
              hintStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: context.isDarkMode
                    ? Colors.grey.shade500
                    : Colors.grey.shade700,
              ),
              filled: true,
              fillColor: context.isDarkMode
                  ? AppColors.loginWithButtonDarkColor
                  : AppColors.textFieldColor,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(16),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
