import 'package:core_module/core_module.dart';
import 'package:fpdart/fpdart.dart';

import '../entity/event.dart';
import '../repository/event_repository.dart';

class SaveEvent implements UseCase<bool, EventParam> {
  final EventRepository _eventRepository;

  const SaveEvent(this._eventRepository);

  @override
  Future<Either<Failure, bool>> call(EventParam params) async {
    return await _eventRepository.save(events: params.events);
  }
}

class EventParam {
  final List<Event> events;
  const EventParam({required this.events});
}
