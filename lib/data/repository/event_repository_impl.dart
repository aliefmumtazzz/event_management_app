import 'package:fpdart/fpdart.dart';

import '../../domain/entity/event.dart';
import 'package:core_module/error/failure.dart';

import '../../domain/repository/event_repository.dart';
import '../datasource/event_local_datasource.dart';
import '../model/event_model.dart';

class EventRepositoryImpl implements EventRepository {
  final IEventLocalDatasource _iEventLocalDatasource;

  const EventRepositoryImpl(this._iEventLocalDatasource);

  @override
  Future<Either<Failure, List<Event>>> get() async {
    try {
      final events = _iEventLocalDatasource.loadEvents();
      return right(events);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> save({required List<Event> events}) async {
    try {
      _iEventLocalDatasource.saveEvents(
        events: events
            .map((e) => EventModel(
                  name: e.name,
                  date: e.date,
                  endTime: e.endTime,
                  startTime: e.startTime,
                  desc: e.desc,
                  color: e.color,
                ))
            .toList(),
      );
      return right(true);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
