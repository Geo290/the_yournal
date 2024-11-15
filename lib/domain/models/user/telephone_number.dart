import 'package:json_annotation/json_annotation.dart';

part 'telephone_number.g.dart';

@JsonSerializable()
class TelephoneNumber {
  final String countryCode;
  final String number;

  TelephoneNumber({
    required this.countryCode,
    required this.number
  });
  factory TelephoneNumber.fromJson(Map<String, dynamic> json) => _$TelephoneNumberFromJson(json);
  Map<String, dynamic> toJson() => _$TelephoneNumberToJson(this);
}