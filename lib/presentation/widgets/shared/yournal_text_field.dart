import 'package:flutter/material.dart';
import 'package:yournal/config/styles/yournal_text_styles.dart';
import 'package:yournal/config/themes/yournal_themes.dart';

class YournalTextField extends StatelessWidget {
  final String? labelText, hintText;
  final TextInputType? inputType;
  final FormFieldValidator? validator;
  final TextEditingController? controller;
  const YournalTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.inputType,
    this.validator,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: inputType ?? TextInputType.text,
      controller: controller,
      autofocus: false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: YournalTextStyles.labelHintStyle(),
        hintText: hintText,
        hintStyle: YournalTextStyles.labelHintStyle(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: YournalThemes.selectColor('red'))
        ),
        filled: true,
        fillColor: YournalThemes.selectColor('tertiary'),
      ),
      style: TextStyle(
        color: YournalThemes.selectColor('greyText'),
      ),
    );
  }
}