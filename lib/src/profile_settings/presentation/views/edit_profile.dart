import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/utils/context_extensions.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ChooseYourSpecialty.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ListWithDialogGender.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../../core/utils/app_route.dart';
import '../../../../core/widgets/custome_flat_button.dart';
import '../../../account_setup/presentation/views/functions/choose_Interests_Bottom_Sheet.dart';
import '../../../account_setup/presentation/views/widgets/BirthdayCard.dart';
import '../../../account_setup/presentation/views/widgets/phoneNum_input.dart';
import '../../../login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';
import 'widget/settings_widget.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  EditProfileViewState createState() => EditProfileViewState();
}

class EditProfileViewState extends State<EditProfileView> {
  late ImageServices _imageServices;

  File? get imageFile => _imageServices.imageFile;

  @override
  void initState() {
    super.initState();
    _imageServices = ImageServices(this, refresh);
  }

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            context.isDarkMode ? AppColors.darkColor : Colors.white,
        toolbarHeight: 70,
        title: Text(
          'Edit Profile',
          style: TextStyle(
              color: MediaQuery.of(context).platformBrightness ==
                      Brightness.dark
                  ? Colors.white
                  : Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
      ),
      backgroundColor: context.isDarkMode ? AppColors.darkColor : Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 20),
            Container(
              width: 180,
              height: 150,
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
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Icon(
                          size: 18, Icons.edit, color: Colors.white)),
                  onPressed: () {
                    _imageServices.showOptionImage(context);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Andrew Ainsley',
                style: TextStyle(
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 23)),
            SizedBox(
              height: 5,
            ),
            Text('andrew_ainsley@yourdomain.com',
                style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                      fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(
                height: 1,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: LocaleKeys.FillYourProfile_fullName.tr(),
              onChanged: (value) {},
            ),
            CustomTextField(
              hintText: LocaleKeys.FillYourProfile_lastName.tr(),
              onChanged: (value) {},
            ),
            BirthdayCard(),
            const PhoneNumberInputScreen(),
            ListWithDialogGender(),
            ChooseYourSpecialtyWithRegister(),
            Container(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomFlatButton(
                onPressed: () {
                  chooseInterestsBottomSheet(context);
                },
                title: LocaleKeys.FillYourProfile_continue.tr(),
                width: MediaQuery.of(context).size.width * 0.94,
                height: 60,
                kTextcolor: AppColors.lightFlatButtonColor,
              ),
            ),
                        Container(height: 20),

          ],
        ),
      ),
    );
  }
}
