import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halim/core/assets/app_images.dart';
import 'package:halim/core/translations/locale_keys.g.dart';
import 'package:halim/src/account_setup/presentation/views/services/image_services.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/BirthdayCard.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ChooseYourSpecialty.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/ListWithDialogGender.dart';
import 'package:halim/src/account_setup/presentation/views/widgets/phoneNum_input.dart';
import 'package:halim/src/login_register/presentation/views/widgets/shared_widgets/custom_text_field.dart';

class FillProfileBody extends StatefulWidget {
  const FillProfileBody();

  
  @override
  _FillProfileBodyState createState() => _FillProfileBodyState();
}

class _FillProfileBodyState extends State<FillProfileBody> {
  String fullName = '';
  String lastName = '';
  String dateBirth = '';
  String gender = '';
  String phoneNumber = '';
  // ignore: unused_field
  final List<String> _options = ['male', 'female'];
  // ignore: unused_field
  String? _selectedOption;

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
    return Column(
          children: [
            Container(height: 10),
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
                    _imageServices.showOptionImage(context);
                  },
                ),
              ),
            ),
            Container(height: 20),
            CustomTextField(
              hintText: LocaleKeys.FillYourProfile_fullName.tr(),
              onChanged: (value) {
                fullName = value;
              },
            ),
            CustomTextField(
              hintText: LocaleKeys.FillYourProfile_lastName.tr(),
              onChanged: (value) {
                lastName = value;
              },
            ),
            BirthdayCard(),
            const PhoneNumberInputScreen(),
            ListWithDialogGender(),
            ChooseYourSpecialtyWithRegister(),
            Container(height: 20),
            
          ],
        );
      
  }
}
