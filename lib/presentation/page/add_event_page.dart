import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../controller/event_cubit.dart';

part '../widget/add_event_text_field.dart';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  late final ValueNotifier<Color> _selectedColor;
  late final TextEditingController _titleTC;
  late final TextEditingController _descTC;
  late final ValueNotifier<DateTime?> _selectedDate;
  late final ValueNotifier<DateTime?> _startTime;
  late final ValueNotifier<DateTime?> _endTime;

  @override
  void initState() {
    super.initState();
    _selectedColor = ValueNotifier(Colors.blue);
    _titleTC = TextEditingController();
    _descTC = TextEditingController();
    _selectedDate = ValueNotifier(null);
    _startTime = ValueNotifier(null);
    _endTime = ValueNotifier(null);
  }

  @override
  void dispose() {
    _selectedColor.dispose();
    _titleTC.dispose();
    _startTime.dispose();
    _endTime.dispose();
    _descTC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const TextComponent(
          text: 'Create New Event',
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddEventTextField(
              labelText: 'Event title',
              controller: _titleTC,
            ),
            ValueListenableBuilder<DateTime?>(
              valueListenable: _selectedDate,
              builder: (_, selectedDate, __) => AddEventTextField(
                labelText: 'Select date',
                readOnly: true,
                controller: TextEditingController(
                  text: selectedDate == null
                      ? ''
                      : DateFormat('d MMM y').format(selectedDate),
                ),
                onTap: () async {
                  _selectedDate.value = await selectedTime(context);
                },
              ).paddingOnly(top: 18.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ValueListenableBuilder<DateTime?>(
                  valueListenable: _startTime,
                  builder: (_, startTime, __) => AddEventTextField(
                    labelText: 'Start time',
                    width: (context.screenWidth / 2) - 34,
                    readOnly: true,
                    controller: TextEditingController(
                      text: startTime == null
                          ? ''
                          : DateFormat('hh:mm').format(startTime),
                    ),
                    onTap: () async {
                      _startTime.value = await selectedTime(
                        context,
                        isTimePicker: true,
                      );
                    },
                  ),
                ),
                ValueListenableBuilder<DateTime?>(
                  valueListenable: _endTime,
                  builder: (_, endTime, __) => AddEventTextField(
                    labelText: 'End time',
                    width: (context.screenWidth / 2) - 34,
                    readOnly: true,
                    controller: TextEditingController(
                      text: endTime == null
                          ? ''
                          : DateFormat('hh:mm').format(endTime),
                    ),
                    onTap: () async {
                      _endTime.value = await selectedTime(
                        context,
                        isTimePicker: true,
                      );
                    },
                  ),
                ),
              ],
            ).paddingOnly(top: 18.0),
            AddEventTextField(
              labelText: 'Event description',
              maxLength: 1000,
              controller: _descTC,
            ).paddingOnly(top: 18.0),
            ValueListenableBuilder<Color>(
              valueListenable: _selectedColor,
              builder: (_, color, __) => GestureDetector(
                onTap: () => _onEventColorTapped(),
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const TextComponent(text: 'Event color: '),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                        ),
                        child: const SizedBox(
                          height: 24.0,
                          width: 24.0,
                        ),
                      ),
                    ],
                  ).paddingOnly(top: 16.0),
                ),
              ),
            ),
            BlocBuilder<EventCubit, EventState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                success: (data) => SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final now = DateTime.now();
                      if (_titleTC.text != '' &&
                          _selectedDate.value != null &&
                          _startTime.value != null &&
                          _endTime.value != null &&
                          _descTC.text != '') {
                        context.read<EventCubit>().onAddEventTapped(
                              name: _titleTC.text.trim(),
                              date: _selectedDate.value ?? now,
                              startTime: _startTime.value ?? now,
                              endTime: _endTime.value ?? now,
                              desc: _descTC.text.trim(),
                              color: _selectedColor.value,
                              currentEvents: data,
                            );
                        context.pop();
                        return;
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please fill up all form'),
                        ),
                      );
                    },
                    child: const TextComponent(text: 'Add Event'),
                  ),
                ).paddingOnly(top: 16.0),
              ),
            ),
          ],
        ).paddingAll(24.0),
      ),
    );
  }

  void _onEventColorTapped() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _EventColorCircle(
                color: Colors.red,
                onTap: () => _selectedColor.value = Colors.red,
              ),
              _EventColorCircle(
                color: Colors.green,
                onTap: () => _selectedColor.value = Colors.green,
              ),
              _EventColorCircle(
                color: Colors.blue,
                onTap: () => _selectedColor.value = Colors.blue,
              ),
            ],
          ).paddingAll(12.0),
        );
      },
    );
  }

  Future<DateTime?> selectedTime(
    BuildContext context, {
    bool isTimePicker = false,
  }) async {
    if (_selectedDate.value == null && isTimePicker) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please select date first'),
          ),
        );
      }
      return null;
    }

    if (isTimePicker) {
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
      );

      if (time == null) return null;

      return _selectedDate.value?.copyWith(
        hour: time.hour,
        minute: time.minute,
      );
    }
    return await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025, 1, 1),
    );
  }
}

class _EventColorCircle extends StatelessWidget {
  final Color color;
  final Function() onTap;

  const _EventColorCircle({required this.color, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        context.pop();
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: const SizedBox(
          height: 62.0,
          width: 62.0,
        ),
      ),
    );
  }
}
