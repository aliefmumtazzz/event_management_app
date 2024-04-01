import 'package:core_module/core_module.dart';
import 'package:fpdart/fpdart.dart';

import '../entity/event.dart';

abstract interface class EventRepository {
  Future<Either<Failure, List<Event>>> get();
  Future<Either<Failure, bool>> save({required List<Event> events});
}
