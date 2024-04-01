import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'data/datasource/event_local_datasource.dart';
import 'data/repository/event_repository_impl.dart';
import 'domain/repository/event_repository.dart';
import 'domain/usecase/get_event.dart';
import 'domain/usecase/save_event.dart';
import 'presentation/controller/event_cubit.dart';

final serviceLocator = GetIt.instance;

class Injector {
  const Injector._();

  static Future<void> init() async {
    // init hive
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    serviceLocator.registerLazySingleton(
      () => Hive.box(name: 'events'),
    );

    _initEvent();
  }

  static void _initEvent() {
    serviceLocator
      // datasource
      ..registerFactory<IEventLocalDatasource>(
        () => EventLocalDataSourceImpl(serviceLocator()),
      )
      // repository
      ..registerFactory<EventRepository>(
        () => EventRepositoryImpl(serviceLocator()),
      )
      // usecase
      ..registerFactory<GetEvents>(
        () => GetEvents(serviceLocator()),
      )
      ..registerFactory<SaveEvent>(
        () => SaveEvent(serviceLocator()),
      )
      // cubit
      ..registerLazySingleton<EventCubit>(
        () => EventCubit(serviceLocator(), serviceLocator()),
      );
  }
}
