import 'package:flutter/material.dart';
import 'package:yournal/config/themes/yournal_themes.dart';
import 'package:yournal/presentation/screens/signup/create_password_screen.dart';
import 'package:yournal/presentation/widgets/shared/yournal_container.dart';
import 'package:yournal/presentation/widgets/shared/yournal_appbar.dart';
import 'package:yournal/presentation/widgets/shared/yournal_mobile_number_field.dart';
import 'package:yournal/presentation/widgets/shared/yournal_submit_button.dart';
import 'package:yournal/presentation/widgets/shared/yournal_text_field.dart';

class ContactInfoScreen extends StatelessWidget {
  const ContactInfoScreen({super.key});

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
                "We'd like to stay in touch with you!",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 30, 
                  color: YournalThemes.selectColor("white")
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Please enter an email and a mobile number. We’ll use it case of account recovery.",
                style: TextStyle(
                  fontSize: 20, 
                  color: YournalThemes.selectColor("white")
                ),
              ),
              const SizedBox(height: 55),
              YournalTextField(
                labelText: "Email*", 
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  return "";
                },
              ),
              const SizedBox(height: 30),
              const YournalMobileNumberField(
                labelText: "Mobile number*",
              ),
              const SizedBox(height: 10),
              Text(
                "You'll recive a verification email.",
                style: TextStyle(color: YournalThemes.selectColor('white')),
              ),
              const SizedBox(height: 140),
              YournalSubmitButton(
                text: "Next",
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (builder) => const CreatePasswordScreen())
                  );
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
