import 'package:flutter/material.dart';
import 'package:yournal/config/themes/yournal_themes.dart';

class YournalTextStyles {
  YournalTextStyles();

  static titleStyle() {
    return TextStyle(
      color: YournalThemes.selectColor('white'),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  static descriptionStyle() {
    return TextStyle(
      color: YournalThemes.selectColor('white'),
      fontSize: 20,
      fontWeight: FontWeight.bold
    );
  }

  static labelHintStyle() {
    return TextStyle(
      color: YournalThemes.selectColor('greyLabel'),
    );
  }

  static submitButonText() {
    return TextStyle(
      color: YournalThemes.selectColor('white'),
      fontSize: 15,
    );
  }

}