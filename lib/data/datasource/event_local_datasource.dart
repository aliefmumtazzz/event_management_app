import 'package:hive/hive.dart';

import '../model/event_model.dart';

abstract interface class IEventLocalDatasource {
  void saveEvents({required List<EventModel> events});
  List<EventModel> loadEvents();
}

class EventLocalDataSourceImpl implements IEventLocalDatasource {
  final Box _box;

  const EventLocalDataSourceImpl(this._box);

  @override
  List<EventModel> loadEvents() {
    final events = <EventModel>[];
    _box.read(() {
      for (int i = 0; i < _box.length; i++) {
        events.add(
          EventModel.fromJson(_box.get(i.toString())),
        );
      }
    });
    return events;
  }

  @override
  void saveEvents({required List<EventModel> events}) async {
    _box.clear();
    _box.write(() {
      for (int i = 0; i < events.length; i++) {
        _box.put(i.toString(), events[i].toJson());
      }
    });
  }
}
