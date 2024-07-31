import 'package:halim/src/shared/model/discount_model.dart';

class StringHelper {
  StringHelper._();
  static String formatNum(num number) {
    return number is int
        ? number.toInt().toString()
        : number.toStringAsFixed(1);
  }

  static String getDiscount(num price, DiscountModel discount) {
    num result = price - price * (discount.value ?? 1);
    return formatNum(result);
  }
}
