import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/event.dart';
import '../../domain/usecase/get_event.dart';
import '../../domain/usecase/save_event.dart';

part 'event_cubit.freezed.dart';
part 'event_state.dart';

class EventCubit extends Cubit<EventState> {
  final GetEvents _getEvents;
  final SaveEvent _saveEvent;

  EventCubit(this._getEvents, this._saveEvent)
      : super(const EventState.initial());

  void getEvents() async {
    emit(const EventState.loading());
    final result = await _getEvents(NoParams());
    result.fold(
      (l) => emit(EventState.error(Exception(l))),
      (r) => emit(EventState.success(r)),
    );
  }

  void _saveEvents(List<Event> events) async {
    emit(const EventState.loading());
    final result = await _saveEvent(EventParam(events: events));
    result.fold(
      (l) => debugPrint('error save $l'),
      (r) => debugPrint('success save'),
    );
  }

  void onAddEventTapped({
    required String name,
    required DateTime date,
    required DateTime startTime,
    required DateTime endTime,
    required String desc,
    required Color color,
    required List<Event> currentEvents,
  }) {
    Event addedEvent = Event(
      name: name,
      date: date,
      endTime: endTime,
      startTime: startTime,
      desc: desc,
      color: color,
    );
    List<Event> lists = currentEvents.map((e) => e).toList();
    lists.add(addedEvent);
    _saveEvents(lists);
    getEvents();
  }
}
