import 'package:flutter/material.dart';

class UserSignupProvider with ChangeNotifier {
  String names = '',
      firstLastname = '',
      secondLastname = '',
      gender = '',
      email = '',
      countryCode = '',
      password = '';
  int mobileNumber = 0;
  DateTime dateOfBirth = DateTime.now();

  UserSignupProvider(
      {required this.names,
      required this.firstLastname,
      required this.secondLastname,
      required this.gender,
      required this.email,
      required this.countryCode,
      required this.mobileNumber,
      required this.password,
      required this.dateOfBirth});

  void setNames(String userNames) {
    names = userNames;
    notifyListeners();
  }

  void setFirstLastname(String userFirstLastname) {
    firstLastname = userFirstLastname;
    notifyListeners();
  }

  void setSecondLastname(String userSecondLastname) {
    secondLastname = userSecondLastname;
    notifyListeners();
  }

  void setGender(String userGender) {
    gender = userGender;
    notifyListeners();
  }

  void setEmail(String userEmail) {
    email = userEmail;
    notifyListeners();
  }

  void setCountryCode(String userCountryCode) {
    countryCode = userCountryCode;
    notifyListeners();
  }

  void setMobileNumber(int userMobileNumber) {
    mobileNumber = userMobileNumber;
    notifyListeners();
  }

  void setPassword(String userPassword) {
    password = userPassword;
    notifyListeners();
  }

  void setDateOfBirth(DateTime userDateOfBirth) {
    dateOfBirth = userDateOfBirth;
    notifyListeners();
  }
}
