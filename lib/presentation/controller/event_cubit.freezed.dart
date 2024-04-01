// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> datas) success,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> datas)? success,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> datas)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventSuccessState value) success,
    required TResult Function(EventErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventSuccessState value)? success,
    TResult? Function(EventErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventSuccessState value)? success,
    TResult Function(EventErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res, EventState>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res, $Val extends EventState>
    implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EventInitialStateImplCopyWith<$Res> {
  factory _$$EventInitialStateImplCopyWith(_$EventInitialStateImpl value,
          $Res Function(_$EventInitialStateImpl) then) =
      __$$EventInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventInitialStateImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventInitialStateImpl>
    implements _$$EventInitialStateImplCopyWith<$Res> {
  __$$EventInitialStateImplCopyWithImpl(_$EventInitialStateImpl _value,
      $Res Function(_$EventInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventInitialStateImpl implements EventInitialState {
  const _$EventInitialStateImpl();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> datas) success,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> datas)? success,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> datas)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventSuccessState value) success,
    required TResult Function(EventErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventSuccessState value)? success,
    TResult? Function(EventErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventSuccessState value)? success,
    TResult Function(EventErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EventInitialState implements EventState {
  const factory EventInitialState() = _$EventInitialStateImpl;
}

/// @nodoc
abstract class _$$EventLoadingStateImplCopyWith<$Res> {
  factory _$$EventLoadingStateImplCopyWith(_$EventLoadingStateImpl value,
          $Res Function(_$EventLoadingStateImpl) then) =
      __$$EventLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EventLoadingStateImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventLoadingStateImpl>
    implements _$$EventLoadingStateImplCopyWith<$Res> {
  __$$EventLoadingStateImplCopyWithImpl(_$EventLoadingStateImpl _value,
      $Res Function(_$EventLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EventLoadingStateImpl implements EventLoadingState {
  const _$EventLoadingStateImpl();

  @override
  String toString() {
    return 'EventState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EventLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> datas) success,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> datas)? success,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> datas)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventSuccessState value) success,
    required TResult Function(EventErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventSuccessState value)? success,
    TResult? Function(EventErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventSuccessState value)? success,
    TResult Function(EventErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EventLoadingState implements EventState {
  const factory EventLoadingState() = _$EventLoadingStateImpl;
}

/// @nodoc
abstract class _$$EventSuccessStateImplCopyWith<$Res> {
  factory _$$EventSuccessStateImplCopyWith(_$EventSuccessStateImpl value,
          $Res Function(_$EventSuccessStateImpl) then) =
      __$$EventSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> datas});
}

/// @nodoc
class __$$EventSuccessStateImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventSuccessStateImpl>
    implements _$$EventSuccessStateImplCopyWith<$Res> {
  __$$EventSuccessStateImplCopyWithImpl(_$EventSuccessStateImpl _value,
      $Res Function(_$EventSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datas = null,
  }) {
    return _then(_$EventSuccessStateImpl(
      null == datas
          ? _value._datas
          : datas // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$EventSuccessStateImpl implements EventSuccessState {
  const _$EventSuccessStateImpl(final List<Event> datas) : _datas = datas;

  final List<Event> _datas;
  @override
  List<Event> get datas {
    if (_datas is EqualUnmodifiableListView) return _datas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datas);
  }

  @override
  String toString() {
    return 'EventState.success(datas: $datas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._datas, _datas));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_datas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventSuccessStateImplCopyWith<_$EventSuccessStateImpl> get copyWith =>
      __$$EventSuccessStateImplCopyWithImpl<_$EventSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> datas) success,
    required TResult Function(Exception error) error,
  }) {
    return success(datas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> datas)? success,
    TResult? Function(Exception error)? error,
  }) {
    return success?.call(datas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> datas)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(datas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventSuccessState value) success,
    required TResult Function(EventErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventSuccessState value)? success,
    TResult? Function(EventErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventSuccessState value)? success,
    TResult Function(EventErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EventSuccessState implements EventState {
  const factory EventSuccessState(final List<Event> datas) =
      _$EventSuccessStateImpl;

  List<Event> get datas;
  @JsonKey(ignore: true)
  _$$EventSuccessStateImplCopyWith<_$EventSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EventErrorStateImplCopyWith<$Res> {
  factory _$$EventErrorStateImplCopyWith(_$EventErrorStateImpl value,
          $Res Function(_$EventErrorStateImpl) then) =
      __$$EventErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$EventErrorStateImplCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$EventErrorStateImpl>
    implements _$$EventErrorStateImplCopyWith<$Res> {
  __$$EventErrorStateImplCopyWithImpl(
      _$EventErrorStateImpl _value, $Res Function(_$EventErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EventErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$EventErrorStateImpl implements EventErrorState {
  const _$EventErrorStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'EventState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventErrorStateImplCopyWith<_$EventErrorStateImpl> get copyWith =>
      __$$EventErrorStateImplCopyWithImpl<_$EventErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> datas) success,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> datas)? success,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> datas)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventInitialState value) initial,
    required TResult Function(EventLoadingState value) loading,
    required TResult Function(EventSuccessState value) success,
    required TResult Function(EventErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EventInitialState value)? initial,
    TResult? Function(EventLoadingState value)? loading,
    TResult? Function(EventSuccessState value)? success,
    TResult? Function(EventErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventInitialState value)? initial,
    TResult Function(EventLoadingState value)? loading,
    TResult Function(EventSuccessState value)? success,
    TResult Function(EventErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EventErrorState implements EventState {
  const factory EventErrorState(final Exception error) = _$EventErrorStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$EventErrorStateImplCopyWith<_$EventErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
