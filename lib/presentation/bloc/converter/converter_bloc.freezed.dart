// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'converter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConverterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) fromCurrencyChanged,
    required TResult Function(String currency) toCurrencyChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() swapCurrencies,
    required TResult Function(Map<String, Decimal> rates) ratesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? fromCurrencyChanged,
    TResult? Function(String currency)? toCurrencyChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? swapCurrencies,
    TResult? Function(Map<String, Decimal> rates)? ratesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? fromCurrencyChanged,
    TResult Function(String currency)? toCurrencyChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? swapCurrencies,
    TResult Function(Map<String, Decimal> rates)? ratesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromCurrencyChanged value) fromCurrencyChanged,
    required TResult Function(_ToCurrencyChanged value) toCurrencyChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_SwapCurrencies value) swapCurrencies,
    required TResult Function(_RatesUpdated value) ratesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult? Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_SwapCurrencies value)? swapCurrencies,
    TResult? Function(_RatesUpdated value)? ratesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_SwapCurrencies value)? swapCurrencies,
    TResult Function(_RatesUpdated value)? ratesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConverterEventCopyWith<$Res> {
  factory $ConverterEventCopyWith(
          ConverterEvent value, $Res Function(ConverterEvent) then) =
      _$ConverterEventCopyWithImpl<$Res, ConverterEvent>;
}

/// @nodoc
class _$ConverterEventCopyWithImpl<$Res, $Val extends ConverterEvent>
    implements $ConverterEventCopyWith<$Res> {
  _$ConverterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FromCurrencyChangedImplCopyWith<$Res> {
  factory _$$FromCurrencyChangedImplCopyWith(_$FromCurrencyChangedImpl value,
          $Res Function(_$FromCurrencyChangedImpl) then) =
      __$$FromCurrencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$FromCurrencyChangedImplCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res, _$FromCurrencyChangedImpl>
    implements _$$FromCurrencyChangedImplCopyWith<$Res> {
  __$$FromCurrencyChangedImplCopyWithImpl(_$FromCurrencyChangedImpl _value,
      $Res Function(_$FromCurrencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$FromCurrencyChangedImpl(
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FromCurrencyChangedImpl implements _FromCurrencyChanged {
  const _$FromCurrencyChangedImpl(this.currency);

  @override
  final String currency;

  @override
  String toString() {
    return 'ConverterEvent.fromCurrencyChanged(currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromCurrencyChangedImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromCurrencyChangedImplCopyWith<_$FromCurrencyChangedImpl> get copyWith =>
      __$$FromCurrencyChangedImplCopyWithImpl<_$FromCurrencyChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) fromCurrencyChanged,
    required TResult Function(String currency) toCurrencyChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() swapCurrencies,
    required TResult Function(Map<String, Decimal> rates) ratesUpdated,
  }) {
    return fromCurrencyChanged(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? fromCurrencyChanged,
    TResult? Function(String currency)? toCurrencyChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? swapCurrencies,
    TResult? Function(Map<String, Decimal> rates)? ratesUpdated,
  }) {
    return fromCurrencyChanged?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? fromCurrencyChanged,
    TResult Function(String currency)? toCurrencyChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? swapCurrencies,
    TResult Function(Map<String, Decimal> rates)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (fromCurrencyChanged != null) {
      return fromCurrencyChanged(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromCurrencyChanged value) fromCurrencyChanged,
    required TResult Function(_ToCurrencyChanged value) toCurrencyChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_SwapCurrencies value) swapCurrencies,
    required TResult Function(_RatesUpdated value) ratesUpdated,
  }) {
    return fromCurrencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult? Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_SwapCurrencies value)? swapCurrencies,
    TResult? Function(_RatesUpdated value)? ratesUpdated,
  }) {
    return fromCurrencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_SwapCurrencies value)? swapCurrencies,
    TResult Function(_RatesUpdated value)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (fromCurrencyChanged != null) {
      return fromCurrencyChanged(this);
    }
    return orElse();
  }
}

abstract class _FromCurrencyChanged implements ConverterEvent {
  const factory _FromCurrencyChanged(final String currency) =
      _$FromCurrencyChangedImpl;

  String get currency;
  @JsonKey(ignore: true)
  _$$FromCurrencyChangedImplCopyWith<_$FromCurrencyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToCurrencyChangedImplCopyWith<$Res> {
  factory _$$ToCurrencyChangedImplCopyWith(_$ToCurrencyChangedImpl value,
          $Res Function(_$ToCurrencyChangedImpl) then) =
      __$$ToCurrencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String currency});
}

/// @nodoc
class __$$ToCurrencyChangedImplCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res, _$ToCurrencyChangedImpl>
    implements _$$ToCurrencyChangedImplCopyWith<$Res> {
  __$$ToCurrencyChangedImplCopyWithImpl(_$ToCurrencyChangedImpl _value,
      $Res Function(_$ToCurrencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$ToCurrencyChangedImpl(
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToCurrencyChangedImpl implements _ToCurrencyChanged {
  const _$ToCurrencyChangedImpl(this.currency);

  @override
  final String currency;

  @override
  String toString() {
    return 'ConverterEvent.toCurrencyChanged(currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToCurrencyChangedImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToCurrencyChangedImplCopyWith<_$ToCurrencyChangedImpl> get copyWith =>
      __$$ToCurrencyChangedImplCopyWithImpl<_$ToCurrencyChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) fromCurrencyChanged,
    required TResult Function(String currency) toCurrencyChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() swapCurrencies,
    required TResult Function(Map<String, Decimal> rates) ratesUpdated,
  }) {
    return toCurrencyChanged(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? fromCurrencyChanged,
    TResult? Function(String currency)? toCurrencyChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? swapCurrencies,
    TResult? Function(Map<String, Decimal> rates)? ratesUpdated,
  }) {
    return toCurrencyChanged?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? fromCurrencyChanged,
    TResult Function(String currency)? toCurrencyChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? swapCurrencies,
    TResult Function(Map<String, Decimal> rates)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (toCurrencyChanged != null) {
      return toCurrencyChanged(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromCurrencyChanged value) fromCurrencyChanged,
    required TResult Function(_ToCurrencyChanged value) toCurrencyChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_SwapCurrencies value) swapCurrencies,
    required TResult Function(_RatesUpdated value) ratesUpdated,
  }) {
    return toCurrencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult? Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_SwapCurrencies value)? swapCurrencies,
    TResult? Function(_RatesUpdated value)? ratesUpdated,
  }) {
    return toCurrencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_SwapCurrencies value)? swapCurrencies,
    TResult Function(_RatesUpdated value)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (toCurrencyChanged != null) {
      return toCurrencyChanged(this);
    }
    return orElse();
  }
}

abstract class _ToCurrencyChanged implements ConverterEvent {
  const factory _ToCurrencyChanged(final String currency) =
      _$ToCurrencyChangedImpl;

  String get currency;
  @JsonKey(ignore: true)
  _$$ToCurrencyChangedImplCopyWith<_$ToCurrencyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountChangedImplCopyWith<$Res> {
  factory _$$AmountChangedImplCopyWith(
          _$AmountChangedImpl value, $Res Function(_$AmountChangedImpl) then) =
      __$$AmountChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$AmountChangedImplCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res, _$AmountChangedImpl>
    implements _$$AmountChangedImplCopyWith<$Res> {
  __$$AmountChangedImplCopyWithImpl(
      _$AmountChangedImpl _value, $Res Function(_$AmountChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$AmountChangedImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChangedImpl implements _AmountChanged {
  const _$AmountChangedImpl(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'ConverterEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      __$$AmountChangedImplCopyWithImpl<_$AmountChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) fromCurrencyChanged,
    required TResult Function(String currency) toCurrencyChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() swapCurrencies,
    required TResult Function(Map<String, Decimal> rates) ratesUpdated,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? fromCurrencyChanged,
    TResult? Function(String currency)? toCurrencyChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? swapCurrencies,
    TResult? Function(Map<String, Decimal> rates)? ratesUpdated,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? fromCurrencyChanged,
    TResult Function(String currency)? toCurrencyChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? swapCurrencies,
    TResult Function(Map<String, Decimal> rates)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromCurrencyChanged value) fromCurrencyChanged,
    required TResult Function(_ToCurrencyChanged value) toCurrencyChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_SwapCurrencies value) swapCurrencies,
    required TResult Function(_RatesUpdated value) ratesUpdated,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult? Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_SwapCurrencies value)? swapCurrencies,
    TResult? Function(_RatesUpdated value)? ratesUpdated,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_SwapCurrencies value)? swapCurrencies,
    TResult Function(_RatesUpdated value)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class _AmountChanged implements ConverterEvent {
  const factory _AmountChanged(final String amount) = _$AmountChangedImpl;

  String get amount;
  @JsonKey(ignore: true)
  _$$AmountChangedImplCopyWith<_$AmountChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapCurrenciesImplCopyWith<$Res> {
  factory _$$SwapCurrenciesImplCopyWith(_$SwapCurrenciesImpl value,
          $Res Function(_$SwapCurrenciesImpl) then) =
      __$$SwapCurrenciesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapCurrenciesImplCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res, _$SwapCurrenciesImpl>
    implements _$$SwapCurrenciesImplCopyWith<$Res> {
  __$$SwapCurrenciesImplCopyWithImpl(
      _$SwapCurrenciesImpl _value, $Res Function(_$SwapCurrenciesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SwapCurrenciesImpl implements _SwapCurrencies {
  const _$SwapCurrenciesImpl();

  @override
  String toString() {
    return 'ConverterEvent.swapCurrencies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapCurrenciesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) fromCurrencyChanged,
    required TResult Function(String currency) toCurrencyChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() swapCurrencies,
    required TResult Function(Map<String, Decimal> rates) ratesUpdated,
  }) {
    return swapCurrencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? fromCurrencyChanged,
    TResult? Function(String currency)? toCurrencyChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? swapCurrencies,
    TResult? Function(Map<String, Decimal> rates)? ratesUpdated,
  }) {
    return swapCurrencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? fromCurrencyChanged,
    TResult Function(String currency)? toCurrencyChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? swapCurrencies,
    TResult Function(Map<String, Decimal> rates)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (swapCurrencies != null) {
      return swapCurrencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromCurrencyChanged value) fromCurrencyChanged,
    required TResult Function(_ToCurrencyChanged value) toCurrencyChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_SwapCurrencies value) swapCurrencies,
    required TResult Function(_RatesUpdated value) ratesUpdated,
  }) {
    return swapCurrencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult? Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_SwapCurrencies value)? swapCurrencies,
    TResult? Function(_RatesUpdated value)? ratesUpdated,
  }) {
    return swapCurrencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_SwapCurrencies value)? swapCurrencies,
    TResult Function(_RatesUpdated value)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (swapCurrencies != null) {
      return swapCurrencies(this);
    }
    return orElse();
  }
}

abstract class _SwapCurrencies implements ConverterEvent {
  const factory _SwapCurrencies() = _$SwapCurrenciesImpl;
}

/// @nodoc
abstract class _$$RatesUpdatedImplCopyWith<$Res> {
  factory _$$RatesUpdatedImplCopyWith(
          _$RatesUpdatedImpl value, $Res Function(_$RatesUpdatedImpl) then) =
      __$$RatesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, Decimal> rates});
}

/// @nodoc
class __$$RatesUpdatedImplCopyWithImpl<$Res>
    extends _$ConverterEventCopyWithImpl<$Res, _$RatesUpdatedImpl>
    implements _$$RatesUpdatedImplCopyWith<$Res> {
  __$$RatesUpdatedImplCopyWithImpl(
      _$RatesUpdatedImpl _value, $Res Function(_$RatesUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rates = null,
  }) {
    return _then(_$RatesUpdatedImpl(
      null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, Decimal>,
    ));
  }
}

/// @nodoc

class _$RatesUpdatedImpl implements _RatesUpdated {
  const _$RatesUpdatedImpl(final Map<String, Decimal> rates) : _rates = rates;

  final Map<String, Decimal> _rates;
  @override
  Map<String, Decimal> get rates {
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rates);
  }

  @override
  String toString() {
    return 'ConverterEvent.ratesUpdated(rates: $rates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatesUpdatedImpl &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatesUpdatedImplCopyWith<_$RatesUpdatedImpl> get copyWith =>
      __$$RatesUpdatedImplCopyWithImpl<_$RatesUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String currency) fromCurrencyChanged,
    required TResult Function(String currency) toCurrencyChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() swapCurrencies,
    required TResult Function(Map<String, Decimal> rates) ratesUpdated,
  }) {
    return ratesUpdated(rates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String currency)? fromCurrencyChanged,
    TResult? Function(String currency)? toCurrencyChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? swapCurrencies,
    TResult? Function(Map<String, Decimal> rates)? ratesUpdated,
  }) {
    return ratesUpdated?.call(rates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String currency)? fromCurrencyChanged,
    TResult Function(String currency)? toCurrencyChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? swapCurrencies,
    TResult Function(Map<String, Decimal> rates)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (ratesUpdated != null) {
      return ratesUpdated(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FromCurrencyChanged value) fromCurrencyChanged,
    required TResult Function(_ToCurrencyChanged value) toCurrencyChanged,
    required TResult Function(_AmountChanged value) amountChanged,
    required TResult Function(_SwapCurrencies value) swapCurrencies,
    required TResult Function(_RatesUpdated value) ratesUpdated,
  }) {
    return ratesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult? Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult? Function(_AmountChanged value)? amountChanged,
    TResult? Function(_SwapCurrencies value)? swapCurrencies,
    TResult? Function(_RatesUpdated value)? ratesUpdated,
  }) {
    return ratesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FromCurrencyChanged value)? fromCurrencyChanged,
    TResult Function(_ToCurrencyChanged value)? toCurrencyChanged,
    TResult Function(_AmountChanged value)? amountChanged,
    TResult Function(_SwapCurrencies value)? swapCurrencies,
    TResult Function(_RatesUpdated value)? ratesUpdated,
    required TResult orElse(),
  }) {
    if (ratesUpdated != null) {
      return ratesUpdated(this);
    }
    return orElse();
  }
}

abstract class _RatesUpdated implements ConverterEvent {
  const factory _RatesUpdated(final Map<String, Decimal> rates) =
      _$RatesUpdatedImpl;

  Map<String, Decimal> get rates;
  @JsonKey(ignore: true)
  _$$RatesUpdatedImplCopyWith<_$RatesUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConverterState {
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  Map<String, Decimal>? get rates => throw _privateConstructorUsedError;
  String? get amountDisplay => throw _privateConstructorUsedError;
  String? get resultDisplay => throw _privateConstructorUsedError;
  String? get footerDisplay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConverterStateCopyWith<ConverterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConverterStateCopyWith<$Res> {
  factory $ConverterStateCopyWith(
          ConverterState value, $Res Function(ConverterState) then) =
      _$ConverterStateCopyWithImpl<$Res, ConverterState>;
  @useResult
  $Res call(
      {String? from,
      String? to,
      String amount,
      Map<String, Decimal>? rates,
      String? amountDisplay,
      String? resultDisplay,
      String? footerDisplay});
}

/// @nodoc
class _$ConverterStateCopyWithImpl<$Res, $Val extends ConverterState>
    implements $ConverterStateCopyWith<$Res> {
  _$ConverterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? amount = null,
    Object? rates = freezed,
    Object? amountDisplay = freezed,
    Object? resultDisplay = freezed,
    Object? footerDisplay = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, Decimal>?,
      amountDisplay: freezed == amountDisplay
          ? _value.amountDisplay
          : amountDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      resultDisplay: freezed == resultDisplay
          ? _value.resultDisplay
          : resultDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      footerDisplay: freezed == footerDisplay
          ? _value.footerDisplay
          : footerDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConverterStateImplCopyWith<$Res>
    implements $ConverterStateCopyWith<$Res> {
  factory _$$ConverterStateImplCopyWith(_$ConverterStateImpl value,
          $Res Function(_$ConverterStateImpl) then) =
      __$$ConverterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? from,
      String? to,
      String amount,
      Map<String, Decimal>? rates,
      String? amountDisplay,
      String? resultDisplay,
      String? footerDisplay});
}

/// @nodoc
class __$$ConverterStateImplCopyWithImpl<$Res>
    extends _$ConverterStateCopyWithImpl<$Res, _$ConverterStateImpl>
    implements _$$ConverterStateImplCopyWith<$Res> {
  __$$ConverterStateImplCopyWithImpl(
      _$ConverterStateImpl _value, $Res Function(_$ConverterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? amount = null,
    Object? rates = freezed,
    Object? amountDisplay = freezed,
    Object? resultDisplay = freezed,
    Object? footerDisplay = freezed,
  }) {
    return _then(_$ConverterStateImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      rates: freezed == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as Map<String, Decimal>?,
      amountDisplay: freezed == amountDisplay
          ? _value.amountDisplay
          : amountDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      resultDisplay: freezed == resultDisplay
          ? _value.resultDisplay
          : resultDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      footerDisplay: freezed == footerDisplay
          ? _value.footerDisplay
          : footerDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConverterStateImpl implements _ConverterState {
  const _$ConverterStateImpl(
      {this.from,
      this.to,
      this.amount = '1',
      final Map<String, Decimal>? rates,
      this.amountDisplay,
      this.resultDisplay,
      this.footerDisplay})
      : _rates = rates;

  @override
  final String? from;
  @override
  final String? to;
  @override
  @JsonKey()
  final String amount;
  final Map<String, Decimal>? _rates;
  @override
  Map<String, Decimal>? get rates {
    final value = _rates;
    if (value == null) return null;
    if (_rates is EqualUnmodifiableMapView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? amountDisplay;
  @override
  final String? resultDisplay;
  @override
  final String? footerDisplay;

  @override
  String toString() {
    return 'ConverterState(from: $from, to: $to, amount: $amount, rates: $rates, amountDisplay: $amountDisplay, resultDisplay: $resultDisplay, footerDisplay: $footerDisplay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConverterStateImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.amountDisplay, amountDisplay) ||
                other.amountDisplay == amountDisplay) &&
            (identical(other.resultDisplay, resultDisplay) ||
                other.resultDisplay == resultDisplay) &&
            (identical(other.footerDisplay, footerDisplay) ||
                other.footerDisplay == footerDisplay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      from,
      to,
      amount,
      const DeepCollectionEquality().hash(_rates),
      amountDisplay,
      resultDisplay,
      footerDisplay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConverterStateImplCopyWith<_$ConverterStateImpl> get copyWith =>
      __$$ConverterStateImplCopyWithImpl<_$ConverterStateImpl>(
          this, _$identity);
}

abstract class _ConverterState implements ConverterState {
  const factory _ConverterState(
      {final String? from,
      final String? to,
      final String amount,
      final Map<String, Decimal>? rates,
      final String? amountDisplay,
      final String? resultDisplay,
      final String? footerDisplay}) = _$ConverterStateImpl;

  @override
  String? get from;
  @override
  String? get to;
  @override
  String get amount;
  @override
  Map<String, Decimal>? get rates;
  @override
  String? get amountDisplay;
  @override
  String? get resultDisplay;
  @override
  String? get footerDisplay;
  @override
  @JsonKey(ignore: true)
  _$$ConverterStateImplCopyWith<_$ConverterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
