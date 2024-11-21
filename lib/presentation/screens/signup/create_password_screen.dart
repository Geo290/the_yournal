import 'package:flutter/material.dart';
import 'package:yournal/config/styles/yournal_responsive_sizes.dart';
import 'package:yournal/config/styles/yournal_text_styles.dart';
import 'package:yournal/presentation/screens/verification/verification_code_screen.dart';
import 'package:yournal/presentation/widgets/global_shared/yournal_appbar.dart';
import 'package:yournal/presentation/widgets/global_shared/yournal_container.dart';
import 'package:yournal/presentation/widgets/global_shared/yournal_submit_button.dart';
import 'package:yournal/presentation/widgets/global_shared/yournal_text_field.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return YournalContainer(
      appBar: YournalAppbar(
        icon: Icons.arrow_back,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              // Title
              Text(
                "Create a password that you only know",
                style: YournalTextStyles.titleStyle(),
              ),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 2)),
              Text(
                "Rember, complex passwords are harder to hack. Do not share it with anyone!",
                style: YournalTextStyles.descriptionStyle(),
              ),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 8) ),
              YournalTextField(
                labelText: "Type your password",
                inputType: TextInputType.visiblePassword,
                validator: (value) {
                  return "";
                },
              ),
              SizedBox( height: YournalResponsiveSizes.responsiveHeight(context, 5) ),
              YournalTextField(
                labelText: "Repeat your password",
                inputType: TextInputType.visiblePassword,
                validator: (value) {
                  return "";
                },
              ),
              SizedBox( height:YournalResponsiveSizes.responsiveHeight(context, 15)),
              YournalSubmitButton(
                text: "Next",
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (builder) => const VerificationCodeScreen())
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}