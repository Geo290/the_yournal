import 'package:json_annotation/json_annotation.dart';
import 'telephone_number.dart';

part 'account_settings.g.dart';

@JsonSerializable()
class AccountSettings {
  final String email;
  final String password;
  final DateTime createdAt;
  final TelephoneNumber telephoneNumber;

  AccountSettings({
    required this.email,
    required this.password,
    required this.createdAt,
    required this.telephoneNumber
  });

  factory AccountSettings.fromJson(Map<String, dynamic> json) => _$AccountSettingsFromJson(json);
  Map<String, dynamic> toJson() => _$AccountSettingsToJson(this);
}