// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      weight: (json['weight'] as num).toInt(),
      dateTime: DateTime.parse(json['dateTime'] as String),
      photoUrl: json['photoUrl'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'dateTime': instance.dateTime.toIso8601String(),
      'photoUrl': instance.photoUrl,
      'note': instance.note,
    };
