import 'package:halim/src/shared/model/discount_model.dart';

class StringHelper {
  StringHelper._();
  static String formatNum(num number) {
    return number is int
        ? number.toInt().toString()
        : number.toStringAsFixed(1);
  }

  static String getDiscount(num price, DiscountModel discount) {
    num result = price - price * (discount.value ?? 0.0);
    return formatNum(result);
  }

  static String getDiscountValue(num price, DiscountModel discount) {
    num result = price * (discount.value ?? 0.0);
    return formatNum(result);
  }

  static String getHoursNum(num hoursNum) {
    return hoursNum.floor().toString();
  }

  static String getMinutesNum(num hoursNum) {
    return ((hoursNum * 60) % 60).toString();
  }
}
