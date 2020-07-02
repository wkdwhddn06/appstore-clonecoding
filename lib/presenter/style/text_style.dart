import 'package:appstoreclonecoding/presenter/style/color_style.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static const String _appleGothicHeavy = 'AppleGothic-Heavy';
  static const String _appleGothicExtraBold = 'AppleGothic-ExtraBold';
  static const String _appleGothicBold = 'AppleGothic-Bold';
  static const String _appleGothicMedium = 'AppleGothic-Medium';
  static const String _appleGothicRegular = 'AppleGothic-Regular';
  static const String _appleGothicLight = 'AppleGothic-Light';
  static const String _appleGothicThin = 'AppleGothic-Thin';

  static const TextStyle titleText = TextStyle(
      fontFamily: _appleGothicExtraBold,
      fontSize: 36,
      color: Colors.black,
      height: 1.1);

  static const TextStyle mediumHeavyText = TextStyle(
      fontFamily: _appleGothicExtraBold,
      fontSize: 26,
      color: Colors.black,
      height: 1.0);

  static const TextStyle smallBoldText = TextStyle(
      fontFamily: _appleGothicBold,
      fontSize: 16,
      color: Colors.black,
      height: 1.1);

  static const TextStyle smallLightText = TextStyle(
      fontFamily: _appleGothicLight,
      fontSize: 16,
      color: Colors.black,
      height: 1.1);

  static const TextStyle descriptionLightText = TextStyle(
      fontFamily: _appleGothicLight,
      fontSize: 14,
      color: Colors.black,
      height: 1.3);

  static const TextStyle buttonExtraBoldText = TextStyle(
      fontFamily: _appleGothicExtraBold,
      fontSize: 14,
      color: Colors.black,
      height: 1.1);

  static const TextStyle accentText = TextStyle(
      fontFamily: _appleGothicBold,
      fontSize: 42,
      color: Colors.white,
      height: 1.3);
}
