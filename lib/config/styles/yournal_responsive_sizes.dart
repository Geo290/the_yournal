import 'package:flutter/material.dart';

class YournalResponsiveSizes {
  YournalResponsiveSizes();

  static double responsiveHeight(BuildContext context, int multiplicand) {
    double height = MediaQuery.sizeOf(context).height / 100;
    return height * multiplicand;
  }

  static double responsiveWidth(BuildContext context, int multiplicand) {
    double width = MediaQuery.sizeOf(context).width / 100;
    return width * multiplicand;
  }
}