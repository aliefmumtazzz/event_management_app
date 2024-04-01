import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../domain/entity/event.dart';
import '../controller/event_cubit.dart';
import 'add_event_page.dart';

class DetailDatePage extends StatelessWidget {
  final CalendarView calendarView;

  const DetailDatePage({super.key, required this.calendarView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<EventCubit, EventState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            success: (data) {
              return SfCalendar(
                view: calendarView,
                allowAppointmentResize: true,
                cellBorderColor: Colors.grey,
                timeSlotViewSettings: const TimeSlotViewSettings(
                  timelineAppointmentHeight: 100,
                  timeIntervalHeight: 70,
                ),
                headerStyle: CalendarHeaderStyle(
                  textAlign: TextAlign.center,
                  backgroundColor: Colors.blueAccent.shade100,
                ),
                dataSource: EventDataSource(data),
                monthViewSettings: MonthViewSettings(
                  appointmentDisplayMode:
                      MonthAppointmentDisplayMode.appointment,
                  showAgenda: true,
                  showTrailingAndLeadingDates: true,
                  monthCellStyle: MonthCellStyle(
                    trailingDatesBackgroundColor: Colors.grey.shade200,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goTo(const AddEventPage()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
