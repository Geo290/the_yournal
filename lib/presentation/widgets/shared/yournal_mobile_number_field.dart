import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:yournal/config/themes/yournal_themes.dart';

class YournalMobileNumberField extends StatelessWidget {
  final String? labelText, hintText;
  const YournalMobileNumberField({super.key, this.labelText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Material(
          color: YournalThemes.selectColor('tertiary'),
          borderRadius: BorderRadius.circular(10),
          child: CountryCodePicker(
            dialogBackgroundColor: YournalThemes.selectColor('fourtiary'),
            dialogTextStyle: TextStyle(
              color: YournalThemes.selectColor('white'),
            ),
            searchStyle: TextStyle(
              color: YournalThemes.selectColor('white')
            ),
            textStyle: TextStyle(
              color: YournalThemes.selectColor('white')
            ),
            barrierColor: YournalThemes.selectColor(''),           
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: TextField(
            autofocus: false,
            keyboardType: TextInputType.number,
            maxLength: 10,
            decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(
                color: YournalThemes.selectColor('greyLabel')
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: YournalThemes.selectColor('greyLabel')
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: YournalThemes.selectColor('red')
                )
              ),
              filled: true,
              fillColor: YournalThemes.selectColor('tertiary'),
              counterText: ""
            ),
            style:  TextStyle(
              color: YournalThemes.selectColor('greyText')
            ),
          )
        )
      ],
    );
  }
}
