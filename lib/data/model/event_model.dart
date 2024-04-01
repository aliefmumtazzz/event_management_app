import 'package:core_module/model/color_serialiser.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entity/event.dart';

part 'event_model.g.dart';

@JsonSerializable()
@ColorSerialiser()
class EventModel extends Event {
  const EventModel({
    required super.name,
    required super.date,
    required super.endTime,
    required super.startTime,
    required super.desc,
    required super.color,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventModelToJson(this);
}
