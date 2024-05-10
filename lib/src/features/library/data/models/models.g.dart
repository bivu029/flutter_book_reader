// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBookList _$GetBookListFromJson(Map<String, dynamic> json) => GetBookList(
      bookidList: (json['bookidList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GetBookListToJson(GetBookList instance) =>
    <String, dynamic>{
      'bookidList': instance.bookidList,
    };
