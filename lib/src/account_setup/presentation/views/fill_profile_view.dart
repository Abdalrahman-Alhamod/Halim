import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/assets/app_images.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import '../../../login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';
import 'services/Image_serves.dart';
import 'widgets/drop_button.dart';

class FillProfilView extends StatefulWidget {
  const FillProfilView({super.key});

  @override
  State<FillProfilView> createState() => _FillProfilViewState();
}

class _FillProfilViewState extends State<FillProfilView> {
  String fullName = '';
  String lastName = '';
  String dateBirth = '';
  String gender = '';
  String phoneNumber = '';
  // ignore: unused_field
  final List<String> _options = ['male', 'female'];
  // ignore: unused_field
  String? _selectedOption;

  late ImageServes _imageServes;

  File? get imageFile => _imageServes.imageFile;

  @override
  void initState() {
    super.initState();
    _imageServes = ImageServes(this);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? AppColors.darkColor
                : AppColors.lightFlatButtonColor,
        title: Text(
          'Fill your profile',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        elevation: 0,
        //  toolbarHeight: 80,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          onPressed: () {
            GoRouter.of(context).push(AppRoute.kFillProfile);
          },
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).platformBrightness == Brightness.dark
              ? AppColors.darkColor
              : AppColors.lightFlatButtonColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 40),
            Container(
              width: 200,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageFile != null
                      ? FileImage(imageFile!)
                      : const AssetImage(AppImages.emptyAvatar)
                          as ImageProvider,
                  fit: BoxFit.contain,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 125),
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  icon: Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Icon(
                          size: 25, Icons.edit, color: Colors.white)),
                  onPressed: () {
                    _imageServes.showOptionImage(context);
                  },
                ),
              ),
            ),
            CustomTextField(
              hintText: 'Full Name',
              onChanged: (value) {
                fullName = value;
              },
            ),
            CustomTextField(
              hintText: 'Last Name',
              onChanged: (value) {
                lastName = value;
              },
            ),
            CustomTextField(
              hintText: 'Date of Birth',
              onChanged: (value) {
                dateBirth = value;
              },
            ),
            CustomTextField(
              hintText: 'Phone Number',
              onChanged: (value) {
                phoneNumber = value;
              },
              prefixIcon: Icons.phone,
            ),
            DropdownButtonField(
              onChanged: (newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.05,
                  right: screenSize.width * 0.05,
                  bottom: screenSize.width * 0.0,
                  top: screenSize.width * 0.07),
              child: CustomFlatButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRoute.kCreatePin);
                },
                title: 'Continue',
                width: MediaQuery.of(context).size.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
            ),
            Container(height: 40),
          ],
        ),
      ),
    );
  }
}
