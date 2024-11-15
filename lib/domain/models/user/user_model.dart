import 'package:json_annotation/json_annotation.dart';
import 'account_settings.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String names;
  final String firstLastname;
  final String secondLastname;
  final String dateOfBirth;
  String countryOfOrigin = '';
  final String gender;
  final AccountSettings accountSettings;

  UserModel({
    required this.names,
    required this.firstLastname,
    required this.secondLastname,
    required this.dateOfBirth,
    required this.countryOfOrigin,
    required this.gender,
    required this.accountSettings
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}