import 'package:flutter/material.dart';
import 'package:yournal/config/styles/yournal_text_styles.dart';
import 'package:yournal/config/themes/yournal_themes.dart';

class YournalSubmitButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const YournalSubmitButton({ super.key, this.text, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style:  ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            YournalThemes.selectColor('red')
          ),
        ),
        onPressed: onPressed, 
        child: Text(
          text ?? "Submit",
          style: YournalTextStyles.submitButonText(),
        ),
      ),
    );
  }
}