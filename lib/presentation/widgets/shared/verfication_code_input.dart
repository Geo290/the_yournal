import 'package:flutter/material.dart';
import 'package:yournal/presentation/widgets/shared/yournal_text_field.dart';

class VerficationCodeInput extends StatelessWidget {
  const VerficationCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: YournalTextField(),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: YournalTextField(),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: YournalTextField(),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: YournalTextField(),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: YournalTextField(),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: YournalTextField(),
        ),
      ],
    ));
  }
}
