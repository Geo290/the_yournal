import 'package:flutter/material.dart';
import 'package:yournal/config/styles/yournal_responsive_sizes.dart';
import 'package:yournal/config/styles/yournal_text_styles.dart';
import 'package:yournal/config/themes/yournal_themes.dart';
import 'package:yournal/presentation/widgets/shared/verfication_code_input.dart';
import 'package:yournal/presentation/widgets/shared/yournal_appbar.dart';
import 'package:yournal/presentation/widgets/shared/yournal_container.dart';
import 'package:yournal/presentation/widgets/shared/yournal_submit_button.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return YournalContainer(
      appBar: YournalAppbar(
        icon: Icons.arrow_back,
        onPressed: () => Navigator.pop(context),
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              // tilte
              Text(
                "Almost There! Please check your messages.",
                style: YournalTextStyles.titleStyle(),
              ),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 2) ),
              Text(
                "We've sent a verification code to your phone. Please enter it to complete your registration.",
                style: YournalTextStyles.descriptionStyle(),
              ),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 8) ),
              const VerficationCodeInput(),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 20) ),
              Center(
                child: InkWell(
                  child: Text(
                    "Not received any code? Send again.",
                    style: TextStyle(color: YournalThemes.selectColor('greyText'))
                  ),
                ),
              ),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 5) ),
              YournalSubmitButton(
                text: "Verify",
                onPressed: () {
                  // Navigator.push(
                  //   context, 
                  //   route
                  // )
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}