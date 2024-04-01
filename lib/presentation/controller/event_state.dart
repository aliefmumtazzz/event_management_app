part of 'event_cubit.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = EventInitialState;
  const factory EventState.loading() = EventLoadingState;
  const factory EventState.success(List<Event> datas) = EventSuccessState;
  const factory EventState.error(Exception error) = EventErrorState;
}
