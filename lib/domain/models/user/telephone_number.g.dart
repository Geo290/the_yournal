// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telephone_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelephoneNumber _$TelephoneNumberFromJson(Map<String, dynamic> json) =>
    TelephoneNumber(
      countryCode: json['countryCode'] as String,
      number: json['number'] as String,
    );

Map<String, dynamic> _$TelephoneNumberToJson(TelephoneNumber instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'number': instance.number,
    };
