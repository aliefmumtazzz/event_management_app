import 'package:core_module/core_module.dart';
import 'package:fpdart/src/either.dart';

import '../entity/event.dart';
import '../repository/event_repository.dart';

class GetEvents implements UseCase<List<Event>, NoParams> {
  final EventRepository _eventRepository;

  const GetEvents(this._eventRepository);

  @override
  Future<Either<Failure, List<Event>>> call(NoParams params) async {
    return await _eventRepository.get();
  }
}
