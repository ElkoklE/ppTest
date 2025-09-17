// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function() refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function()? refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RatesRequested value) requested,
    required TResult Function(RatesRefreshRequested value) refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesRequested value)? requested,
    TResult? Function(RatesRefreshRequested value)? refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesRequested value)? requested,
    TResult Function(RatesRefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesEventCopyWith<$Res> {
  factory $RatesEventCopyWith(
          RatesEvent value, $Res Function(RatesEvent) then) =
      _$RatesEventCopyWithImpl<$Res, RatesEvent>;
}

/// @nodoc
class _$RatesEventCopyWithImpl<$Res, $Val extends RatesEvent>
    implements $RatesEventCopyWith<$Res> {
  _$RatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RatesRequestedImplCopyWith<$Res> {
  factory _$$RatesRequestedImplCopyWith(_$RatesRequestedImpl value,
          $Res Function(_$RatesRequestedImpl) then) =
      __$$RatesRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RatesRequestedImplCopyWithImpl<$Res>
    extends _$RatesEventCopyWithImpl<$Res, _$RatesRequestedImpl>
    implements _$$RatesRequestedImplCopyWith<$Res> {
  __$$RatesRequestedImplCopyWithImpl(
      _$RatesRequestedImpl _value, $Res Function(_$RatesRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RatesRequestedImpl implements RatesRequested {
  const _$RatesRequestedImpl();

  @override
  String toString() {
    return 'RatesEvent.requested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RatesRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function() refreshRequested,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function()? refreshRequested,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RatesRequested value) requested,
    required TResult Function(RatesRefreshRequested value) refreshRequested,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesRequested value)? requested,
    TResult? Function(RatesRefreshRequested value)? refreshRequested,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesRequested value)? requested,
    TResult Function(RatesRefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class RatesRequested implements RatesEvent {
  const factory RatesRequested() = _$RatesRequestedImpl;
}

/// @nodoc
abstract class _$$RatesRefreshRequestedImplCopyWith<$Res> {
  factory _$$RatesRefreshRequestedImplCopyWith(
          _$RatesRefreshRequestedImpl value,
          $Res Function(_$RatesRefreshRequestedImpl) then) =
      __$$RatesRefreshRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RatesRefreshRequestedImplCopyWithImpl<$Res>
    extends _$RatesEventCopyWithImpl<$Res, _$RatesRefreshRequestedImpl>
    implements _$$RatesRefreshRequestedImplCopyWith<$Res> {
  __$$RatesRefreshRequestedImplCopyWithImpl(_$RatesRefreshRequestedImpl _value,
      $Res Function(_$RatesRefreshRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RatesRefreshRequestedImpl implements RatesRefreshRequested {
  const _$RatesRefreshRequestedImpl();

  @override
  String toString() {
    return 'RatesEvent.refreshRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesRefreshRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requested,
    required TResult Function() refreshRequested,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requested,
    TResult? Function()? refreshRequested,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requested,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RatesRequested value) requested,
    required TResult Function(RatesRefreshRequested value) refreshRequested,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesRequested value)? requested,
    TResult? Function(RatesRefreshRequested value)? refreshRequested,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesRequested value)? requested,
    TResult Function(RatesRefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class RatesRefreshRequested implements RatesEvent {
  const factory RatesRefreshRequested() = _$RatesRefreshRequestedImpl;
}

/// @nodoc
mixin _$RatesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, Decimal> data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, Decimal> data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, Decimal> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RatesLoading value) loading,
    required TResult Function(RatesLoaded value) loaded,
    required TResult Function(RatesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesLoading value)? loading,
    TResult? Function(RatesLoaded value)? loaded,
    TResult? Function(RatesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesLoading value)? loading,
    TResult Function(RatesLoaded value)? loaded,
    TResult Function(RatesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesStateCopyWith<$Res> {
  factory $RatesStateCopyWith(
          RatesState value, $Res Function(RatesState) then) =
      _$RatesStateCopyWithImpl<$Res, RatesState>;
}

/// @nodoc
class _$RatesStateCopyWithImpl<$Res, $Val extends RatesState>
    implements $RatesStateCopyWith<$Res> {
  _$RatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RatesLoadingImplCopyWith<$Res> {
  factory _$$RatesLoadingImplCopyWith(
          _$RatesLoadingImpl value, $Res Function(_$RatesLoadingImpl) then) =
      __$$RatesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RatesLoadingImplCopyWithImpl<$Res>
    extends _$RatesStateCopyWithImpl<$Res, _$RatesLoadingImpl>
    implements _$$RatesLoadingImplCopyWith<$Res> {
  __$$RatesLoadingImplCopyWithImpl(
      _$RatesLoadingImpl _value, $Res Function(_$RatesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RatesLoadingImpl implements RatesLoading {
  const _$RatesLoadingImpl();

  @override
  String toString() {
    return 'RatesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RatesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, Decimal> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, Decimal> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, Decimal> data)? loaded,
    TResult Function(String message)? error,
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
    required TResult Function(RatesLoading value) loading,
    required TResult Function(RatesLoaded value) loaded,
    required TResult Function(RatesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesLoading value)? loading,
    TResult? Function(RatesLoaded value)? loaded,
    TResult? Function(RatesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesLoading value)? loading,
    TResult Function(RatesLoaded value)? loaded,
    TResult Function(RatesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RatesLoading implements RatesState {
  const factory RatesLoading() = _$RatesLoadingImpl;
}

/// @nodoc
abstract class _$$RatesLoadedImplCopyWith<$Res> {
  factory _$$RatesLoadedImplCopyWith(
          _$RatesLoadedImpl value, $Res Function(_$RatesLoadedImpl) then) =
      __$$RatesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, Decimal> data});
}

/// @nodoc
class __$$RatesLoadedImplCopyWithImpl<$Res>
    extends _$RatesStateCopyWithImpl<$Res, _$RatesLoadedImpl>
    implements _$$RatesLoadedImplCopyWith<$Res> {
  __$$RatesLoadedImplCopyWithImpl(
      _$RatesLoadedImpl _value, $Res Function(_$RatesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RatesLoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, Decimal>,
    ));
  }
}

/// @nodoc

class _$RatesLoadedImpl implements RatesLoaded {
  const _$RatesLoadedImpl(final Map<String, Decimal> data) : _data = data;

  final Map<String, Decimal> _data;
  @override
  Map<String, Decimal> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'RatesState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesLoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatesLoadedImplCopyWith<_$RatesLoadedImpl> get copyWith =>
      __$$RatesLoadedImplCopyWithImpl<_$RatesLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, Decimal> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, Decimal> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, Decimal> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RatesLoading value) loading,
    required TResult Function(RatesLoaded value) loaded,
    required TResult Function(RatesError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesLoading value)? loading,
    TResult? Function(RatesLoaded value)? loaded,
    TResult? Function(RatesError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesLoading value)? loading,
    TResult Function(RatesLoaded value)? loaded,
    TResult Function(RatesError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RatesLoaded implements RatesState {
  const factory RatesLoaded(final Map<String, Decimal> data) =
      _$RatesLoadedImpl;

  Map<String, Decimal> get data;
  @JsonKey(ignore: true)
  _$$RatesLoadedImplCopyWith<_$RatesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RatesErrorImplCopyWith<$Res> {
  factory _$$RatesErrorImplCopyWith(
          _$RatesErrorImpl value, $Res Function(_$RatesErrorImpl) then) =
      __$$RatesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RatesErrorImplCopyWithImpl<$Res>
    extends _$RatesStateCopyWithImpl<$Res, _$RatesErrorImpl>
    implements _$$RatesErrorImplCopyWith<$Res> {
  __$$RatesErrorImplCopyWithImpl(
      _$RatesErrorImpl _value, $Res Function(_$RatesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RatesErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RatesErrorImpl implements RatesError {
  const _$RatesErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RatesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatesErrorImplCopyWith<_$RatesErrorImpl> get copyWith =>
      __$$RatesErrorImplCopyWithImpl<_$RatesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Map<String, Decimal> data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Map<String, Decimal> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Map<String, Decimal> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RatesLoading value) loading,
    required TResult Function(RatesLoaded value) loaded,
    required TResult Function(RatesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RatesLoading value)? loading,
    TResult? Function(RatesLoaded value)? loaded,
    TResult? Function(RatesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RatesLoading value)? loading,
    TResult Function(RatesLoaded value)? loaded,
    TResult Function(RatesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RatesError implements RatesState {
  const factory RatesError(final String message) = _$RatesErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RatesErrorImplCopyWith<_$RatesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
