import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Event extends Equatable {
  final String name;
  final DateTime date;
  final DateTime startTime;
  final DateTime endTime;
  final String desc;
  final Color color;

  const Event({
    required this.name,
    required this.date,
    required this.endTime,
    required this.startTime,
    required this.desc,
    required this.color,
  });

  @override
  List<Object?> get props => [
        name,
        date,
        startTime,
        endTime,
        desc,
        color,
      ];
}

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Event> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return (appointments as List<Event>)[index].startTime;
  }

  @override
  DateTime getEndTime(int index) {
    return (appointments as List<Event>)[index].endTime;
  }

  @override
  String getSubject(int index) {
    return (appointments as List<Event>)[index].name;
  }

  @override
  Color getColor(int index) {
    return (appointments as List<Event>)[index].color;
  }
}
