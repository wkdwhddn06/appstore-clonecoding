import 'package:flutter/cupertino.dart';
import 'color_style.dart';

class ShadowStyles {
  static BoxShadow lightShadow = BoxShadow(
      color: ColorStyles.primaryDarkLightColor.withOpacity(0.4),
      spreadRadius: 6,
      blurRadius: 16,
      offset: Offset(0, 8));

  static BoxShadow denseShadow = BoxShadow(
      color: ColorStyles.primaryDarkLightColor.withOpacity(1),
      spreadRadius: 6,
      blurRadius: 10,
      offset: Offset(0, 8));
}
