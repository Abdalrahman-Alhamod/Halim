import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/assets/app_images.dart';
import '../../../../core/translations/locale_keys.g.dart';
import 'services/image_services.dart';
import 'widgets/birthday_card.dart';
import 'widgets/choose_your_specialty.dart';
import 'widgets/list_with_dialog_gender.dart';
import 'widgets/phone_num_input.dart';
import '../../../auth/presentation/views/widgets/shared_widgets/custom_text_field.dart';

class FillProfileBody extends StatefulWidget {
  const FillProfileBody({super.key});

  @override
  FillProfileBodyState createState() => FillProfileBodyState();
}

class FillProfileBodyState extends State<FillProfileBody> {
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
                  : const AssetImage(AppImages.emptyAvatar) as ImageProvider,
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
                  child: const Icon(size: 25, Icons.edit, color: Colors.white)),
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
        const BirthdayCard(),
        const PhoneNumberInputScreen(),
        const ListWithDialogGender(),
        const ChooseYourSpecialtyWithRegister(),
        Container(height: 20),
      ],
    );
  }
}
