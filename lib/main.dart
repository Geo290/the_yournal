import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yournal/presentation/screens/signin/signin_screen.dart';
import 'package:yournal/presentation/screens/signup/contact_info_screen.dart';
import 'package:yournal/presentation/screens/signup/personal_info_screen.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactInfoScreen()
    );
  }
}