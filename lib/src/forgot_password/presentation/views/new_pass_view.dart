import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/forgot_password/presentation/views/widget/new_pass_body.dart';

import '../../../../core/themes/app_colors.dart';

class NewPassView extends StatefulWidget {
  const NewPassView({super.key});

  @override
  State<NewPassView> createState() => _NewPassViewState();
}

class _NewPassViewState extends State<NewPassView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              context.isDarkMode ? AppColors.darkColor : Colors.white,
          title: Text(
            'Create New Password',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
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
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        body: NewPassBody());
  }
}
