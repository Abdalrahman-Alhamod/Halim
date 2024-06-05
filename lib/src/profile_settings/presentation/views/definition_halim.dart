import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/core/utils/app_route.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/core/widgets/custome_flat_button.dart';
import 'package:halim/src/account_setup/presentation/views/fill_profile_body.dart';

import 'package:halim/src/forgot_password/presentation/views/widget/accont_sucsses_dialog.dart';
import 'package:halim/src/profile_settings/presentation/views/widget/introductory_widget.dart';

import '../../../../core/functions/show_custom_dialog.dart';
import '../../../../core/themes/app_colors.dart';

class DefinitionHalimView extends StatefulWidget {
  const DefinitionHalimView({super.key});

  @override
  DefinitionHalimViewState createState() => DefinitionHalimViewState();
}

class DefinitionHalimViewState extends State<DefinitionHalimView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          'Definition of Hailm',
          style: TextStyle(
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          IntroductoryWidget(
              title: 'What is Halim?',
              text:
                  'Embrace the power of knowledge and unlock your full potential with Halim. Join our community of passionate learners and embark on a journey of continuous growth and development. Visit our website at www.halim.com to explore our diverse course offerings and create your personalized learning path. Halim: your gateway to a brighter future.'),
          IntroductoryWidget(
              title: 'Lifetime of Learning?',
              text:
                  'Halim is committed to empowering individuals to achieve their lifelong learning goals. Our platform continuously updates its course offerings and expands its curriculum to stay at the forefront of knowledge and innovation. With Halim, you can confidently navigate the ever-changing landscape of education and stay ahead of the curve in your chosen field.'),
          IntroductoryWidget(
              title: 'Is Halim free to use?',
              text:
                  'Halim is more than just an online education platform; it\'s a vibrant community of learners. Our platform facilitates interaction among students, allowing them to connect, collaborate, and support each other\'s learning journeys. You can participate in forums, ask questions, and engage in discussions with fellow learners and experts, fostering a collaborative and supportive learning environment.'),
        ]),
      ),
    );
  }
}
