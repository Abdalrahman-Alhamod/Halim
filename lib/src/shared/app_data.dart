import 'package:easy_localization/easy_localization.dart';
import 'model/category_model.dart';
import 'model/subcategory_model.dart';

import '../../core/translations/locale_keys.g.dart';

SubcategoryModel getSubcategoryAll() {
  return SubcategoryModel(id: allId, name: LocaleKeys.Buttons_all.tr());
}

CategoryModel getCategoryAll() {
  return CategoryModel(id: allId, name: LocaleKeys.Buttons_all.tr());
}

const int allId = -1;
