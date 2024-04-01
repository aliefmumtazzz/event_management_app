import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injector.dart';
import 'presentation/controller/event_cubit.dart';
import 'presentation/page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Injector.init();

  runApp(const EventManagementApp());
}

class EventManagementApp extends StatelessWidget {
  const EventManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => serviceLocator<EventCubit>(),
      child: MaterialApp(
        title: 'Event management app',
        theme: ThemeData(
          useMaterial3: false,
        ),
        home: const HomePage(),
      ),
    );
  }
}
