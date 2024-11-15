import 'package:flutter/material.dart';

class YournalThemes {
  YournalThemes();

  static const Map<String, Color> colorPalette = {
    'primary':    Colors.black,
    'secondary':  Color.fromARGB(193, 12, 12, 12),
    'tertiary':   Color.fromARGB(60, 255, 255, 255),
    'fourtiary':  Color.fromARGB(255, 46, 46, 46),
    'greyText':   Color.fromARGB(146, 255, 255, 255),
    'greyLabel':  Colors.white60,
    'yellow':     Color.fromARGB(255, 237, 215, 158),
    'white':      Colors.white,
    'blue':       Color.fromARGB(255, 0, 75, 173),
    'red':        Color.fromARGB(255, 150, 3, 52),
  };

  static Color selectColor(String color) {
    return colorPalette[color] ?? Colors.transparent;
  }
}
