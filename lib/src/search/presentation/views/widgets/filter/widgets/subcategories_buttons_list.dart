import 'package:flutter/material.dart';
import 'package:halim/src/shared/app_data.dart';

import '../../../../../../home/presentation/views/widgets/category_widget.dart';
import '../../../../../../shared/model/subcategory_model.dart';

class SubcategoriesButtonsList extends StatefulWidget {
  const SubcategoriesButtonsList({
    super.key,
    required this.subcategories,
    this.initialValueId = allId,
    required this.onChange,
  });
  final List<SubcategoryModel> subcategories;
  final int initialValueId;
  final void Function(int id) onChange;
  @override
  State<SubcategoriesButtonsList> createState() =>
      _SubcategoriesButtonsListState();
}

class _SubcategoriesButtonsListState extends State<SubcategoriesButtonsList> {
  late int _id;
  @override
  void initState() {
    _id = widget.initialValueId;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const ScrollPhysics(),
      itemCount: widget.subcategories.length,
      itemBuilder: (context, index) => CategoryWidget(
        category: widget.subcategories[index].name ?? '',
        isSelected: _id == widget.subcategories[index].id,
        onTap: () {
          setState(() {
            _id = widget.subcategories[index].id ?? allId;
            widget.onChange.call(_id);
          });
        },
      ),
      separatorBuilder: (context, index) => const SizedBox(
        width: 8,
      ),
    );
  }
}
