import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../../core/utils/context_extensions.dart';
import '../../../../../../auth/presentation/views/widgets/shared_widgets/custom_text_field.dart';

import '../../../../../../../core/translations/locale_keys.g.dart';
import '../../../../../../shared/model/category_model.dart';

class SelectCategoryDialog extends StatefulWidget {
  const SelectCategoryDialog(
      {super.key, required this.categories, required this.onSelect});
  final List<CategoryModel> categories;
  final void Function(CategoryModel selectedCategory) onSelect;
  @override
  State<SelectCategoryDialog> createState() => _SelectCategoryDialogState();
}

class _SelectCategoryDialogState extends State<SelectCategoryDialog> {
  late List<CategoryModel> _searchResults;
  @override
  void initState() {
    _searchResults = widget.categories;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.6,
      child: Column(
        children: [
          CustomTextField(
            hintText: LocaleKeys.FillYourProfile_Specialty_search.tr(),
            onChanged: (value) {
              setState(
                () {
                  _searchResults = widget.categories
                      .where(
                        (category) =>
                            (category.name ?? '').toLowerCase().contains(
                                  value.toLowerCase(),
                                ),
                      )
                      .toList();
                },
              );
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_searchResults[index].name ?? ''),
                  onTap: () {
                    widget.onSelect(_searchResults[index]);
                    context.pop();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
