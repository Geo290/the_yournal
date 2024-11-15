import 'package:flutter/material.dart';
import 'package:yournal/config/styles/yournal_text_styles.dart';
import 'package:yournal/presentation/widgets/shared/yournal_container.dart';
import 'package:yournal/presentation/widgets/shared/yournal_appbar.dart';
import 'package:yournal/presentation/widgets/shared/yournal_text_field.dart';
import 'package:yournal/presentation/widgets/shared/yournal_gender_dropdown.dart';
import 'package:yournal/presentation/widgets/shared/yournal_datepicker.dart';
import 'package:yournal/presentation/widgets/shared/yournal_submit_button.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return YournalContainer(
      appBar: const YournalAppbar(
        icon: Icons.arrow_back
      ),
      child: Material(
          color: Colors.transparent, 
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [  
              // Title
              Text(
                // Title
                "Tell us a bit about you!",
                style: YournalTextStyles.titleStyle(),
              ),
              const SizedBox( height: 20 ),
              Text(
                // Description
                "Enter the requested information to setup your profile. No one will see sensitive info.",
                style: YournalTextStyles.descriptionStyle()
              ),
              const SizedBox( height: 30 ),
              const YournalTextField( labelText: "Name(s)*" ),
              const SizedBox( height: 10 ),
              const YournalTextField( labelText: "First lastname*" ),
              const SizedBox( height: 10 ),
              const YournalTextField( labelText: "Second lastname" ),
              const SizedBox( height: 10 ),
              const YournalGenreDropdown(),
              const SizedBox( height: 10 ),
              const YournalDatepicker(),
              const SizedBox( height: 50 ),
              const YournalSubmitButton(
                text: "Next",
              )
            ]
          )
        )
      )
    );
  }
}
