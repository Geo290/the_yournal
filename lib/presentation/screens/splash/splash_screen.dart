import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yournal/presentation/widgets/global_shared/yournal_container.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return YournalContainer(
      child: Padding(
        padding: const EdgeInsets.all(55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Yournal",
              style: TextStyle(
                  fontFamily: GoogleFonts.dmSerifDisplay().fontFamily,
                  fontSize: 70,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                  color: const Color.fromARGB(255, 150, 3, 52)),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "What happens there, resonates here.",
              style: TextStyle(
                fontFamily: GoogleFonts.quicksand().fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
    ));
  }
}
