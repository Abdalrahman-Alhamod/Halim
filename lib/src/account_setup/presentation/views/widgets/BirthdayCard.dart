import 'package:flutter/material.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:halim/core/themes/app_colors.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class BirthdayCard extends StatefulWidget {
  const BirthdayCard({super.key});

  @override
  BirthdayCardState createState() => BirthdayCardState();
}

class BirthdayCardState extends State<BirthdayCard> {
  DateTime? _selectedDate;
  final TextEditingController _controller = TextEditingController();

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      _selectedDate = args.value;
      _controller.text = DateFormat('yyyy-MM-dd', 'en').format(_selectedDate!);
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(LocaleKeys.FillYourProfile_dateOfBirth.tr()),
          content: Container(
            height: 300,
            width: 300,
            child: SfDateRangePicker(
              backgroundColor:
                  context.isDarkMode ? AppColors.darkColor : Colors.white,
              selectionTextStyle: TextStyle(fontSize: 20),
              headerStyle: DateRangePickerHeaderStyle(
                  textStyle: TextStyle(fontSize: 20)),
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.single,
              initialSelectedDate: _selectedDate,
              minDate: DateTime(1900),
              maxDate: DateTime(2100),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
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
