import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/forgot_password/presentation/views/enter_code_body.dart';

import '../../../../core/themes/app_colors.dart';

class EnterCodeView extends StatefulWidget {
  const EnterCodeView({super.key});

  @override
  State<EnterCodeView> createState() => _EnterCodeViewState();
}

class _EnterCodeViewState extends State<EnterCodeView> {
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        title: Text('Enter Code',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
            )),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: EnterCodeBody()
    );
  }
}
