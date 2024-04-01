// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      startTime: DateTime.parse(json['startTime'] as String),
      desc: json['desc'] as String,
      color: const ColorSerialiser().fromJson(json['color'] as int),
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'desc': instance.desc,
      'color': const ColorSerialiser().toJson(instance.color),
    };
