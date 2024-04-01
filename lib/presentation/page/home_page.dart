import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../controller/event_cubit.dart';
import 'detail_date_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<EventCubit>().getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventCubit, EventState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        success: (data) => debugPrint('listener success $data'),
        error: (error) => debugPrint('linstener error $error'),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const TextComponent(
            text: 'Calendar View',
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.goTo(
                  const DetailDatePage(calendarView: CalendarView.month),
                ),
                child: const TextComponent(text: 'Month view'),
              ),
              ElevatedButton(
                onPressed: () => context.goTo(
                  const DetailDatePage(calendarView: CalendarView.day),
                ),
                child: const TextComponent(text: 'Day view'),
              ).paddingSymmetric(vertical: 24.0),
              ElevatedButton(
                onPressed: () => context.goTo(
                  const DetailDatePage(calendarView: CalendarView.week),
                ),
                child: const TextComponent(text: 'Week view'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
