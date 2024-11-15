// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      names: json['names'] as String,
      firstLastname: json['firstLastname'] as String,
      secondLastname: json['secondLastname'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      countryOfOrigin: json['countryOfOrigin'] as String,
      gender: json['gender'] as String,
      accountSettings: AccountSettings.fromJson(
          json['accountSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'names': instance.names,
      'firstLastname': instance.firstLastname,
      'secondLastname': instance.secondLastname,
      'dateOfBirth': instance.dateOfBirth,
      'countryOfOrigin': instance.countryOfOrigin,
      'gender': instance.gender,
      'accountSettings': instance.accountSettings,
    };
