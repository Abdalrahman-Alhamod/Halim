import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halim/src/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:halim/src/shared/model/category_model.dart';
import '../../../../../core/translations/locale_keys.g.dart';
import '../../../../../core/utils/context_extensions.dart';
import '../../../../../core/themes/app_colors.dart';

class ChooseYourSpecialtyWithRegister extends StatefulWidget {
  final Function(CategoryModel) onSpecialtySelected;
  final String hintText;
  const ChooseYourSpecialtyWithRegister({
    super.key,
    required this.onSpecialtySelected,
    required this.hintText,
  });

  @override
  ChooseYourSpecialtyWithRegisterState createState() =>
      ChooseYourSpecialtyWithRegisterState();
}

class ChooseYourSpecialtyWithRegisterState
    extends State<ChooseYourSpecialtyWithRegister> {
  TextEditingController controller = TextEditingController();
  bool _isFocused = false;
  late dynamic searchCubit;

  late FocusNode _focusNode;
  late List<CategoryModel> allCategories = [];
  late List<CategoryModel> filteredCategories = [];

  @override
  void initState() {
    super.initState();

    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
    searchCubit = context.read<SearchCubit>();
    searchCubit.getCategories();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  bool isWaitingForCategories = true;
  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText:
                          LocaleKeys.FillYourProfile_Specialty_search.tr(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        filteredCategories = allCategories
                            .where((category) => category.name!.contains(value))
                            .toList();
                      });
                    },
                  ),
                ],
              ),
              content: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                state.whenOrNull(
                  fetchCategoriesSuccess: (data, message) {
                    allCategories = data;

                    if (isWaitingForCategories) {
                      filteredCategories = data;
                      isWaitingForCategories = false;
                    }
                  },
                );
                return allCategories.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : SizedBox(
                        width: double.maxFinite,
                        height: 500.0,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: filteredCategories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(filteredCategories[index].name ?? ""),
                              onTap: () {
                                setState(() {
                                  controller.text =
                                      filteredCategories[index].name ?? '';
                                });
                                widget.onSpecialtySelected(
                                  filteredCategories[index],
                                );
                                Navigator.of(context).pop();
                              },
                            );
                          },
                        ),
                      );
              }),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        focusNode: _focusNode,
        readOnly: true,
        onTap: _showDialog,
        decoration: InputDecoration(
          hintText: widget.hintText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: context.isDarkMode
                ? Colors.grey.shade500
                : Colors.grey.shade700,
          ),
          suffixIcon: const Icon(
            Icons.arrow_drop_down_rounded,
            size: 30,
          ),
          filled: true,
          fillColor: context.isDarkMode
              ? _isFocused
                  ? AppColors.primaryColor.withAlpha(20)
                  : AppColors.loginWithButtonDarkColor
              : _isFocused
                  ? AppColors.primaryColor.withAlpha(30)
                  : AppColors.textFieldColor,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
