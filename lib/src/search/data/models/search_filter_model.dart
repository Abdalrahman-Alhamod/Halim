import '../../../shared/model/category_model.dart';
import '../../../shared/model/subcategory_model.dart';

class SearchFilterModel {
  CategoryModel category;
  SubcategoryModel subcategory;
  int startDuation;
  int endDuration;
  String level;
  int startPrice;
  int endPrice;
  String rating;

  SearchFilterModel({
    required this.category,
    required this.subcategory,
    required this.startDuation,
    required this.endDuration,
    required this.level,
    required this.startPrice,
    required this.endPrice,
    required this.rating,
  });
}
