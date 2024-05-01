// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kitchen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KitchenState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get selectType => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  List<OrderData> get orders => throw _privateConstructorUsedError;
  OrderData? get selectOrder => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  int get selectIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KitchenStateCopyWith<KitchenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KitchenStateCopyWith<$Res> {
  factory $KitchenStateCopyWith(
          KitchenState value, $Res Function(KitchenState) then) =
      _$KitchenStateCopyWithImpl<$Res, KitchenState>;
  @useResult
  $Res call(
      {bool isLoading,
      String selectType,
      bool hasMore,
      List<OrderData> orders,
      OrderData? selectOrder,
      String query,
      int selectIndex});
}

/// @nodoc
class _$KitchenStateCopyWithImpl<$Res, $Val extends KitchenState>
    implements $KitchenStateCopyWith<$Res> {
  _$KitchenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectType = null,
    Object? hasMore = null,
    Object? orders = null,
    Object? selectOrder = freezed,
    Object? query = null,
    Object? selectIndex = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectType: null == selectType
          ? _value.selectType
          : selectType // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
      selectOrder: freezed == selectOrder
          ? _value.selectOrder
          : selectOrder // ignore: cast_nullable_to_non_nullable
              as OrderData?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      selectIndex: null == selectIndex
          ? _value.selectIndex
          : selectIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KitchenStateCopyWith<$Res>
    implements $KitchenStateCopyWith<$Res> {
  factory _$$_KitchenStateCopyWith(
          _$_KitchenState value, $Res Function(_$_KitchenState) then) =
      __$$_KitchenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String selectType,
      bool hasMore,
      List<OrderData> orders,
      OrderData? selectOrder,
      String query,
      int selectIndex});
}

/// @nodoc
class __$$_KitchenStateCopyWithImpl<$Res>
    extends _$KitchenStateCopyWithImpl<$Res, _$_KitchenState>
    implements _$$_KitchenStateCopyWith<$Res> {
  __$$_KitchenStateCopyWithImpl(
      _$_KitchenState _value, $Res Function(_$_KitchenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? selectType = null,
    Object? hasMore = null,
    Object? orders = null,
    Object? selectOrder = freezed,
    Object? query = null,
    Object? selectIndex = null,
  }) {
    return _then(_$_KitchenState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectType: null == selectType
          ? _value.selectType
          : selectType // ignore: cast_nullable_to_non_nullable
              as String,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderData>,
      selectOrder: freezed == selectOrder
          ? _value.selectOrder
          : selectOrder // ignore: cast_nullable_to_non_nullable
              as OrderData?,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      selectIndex: null == selectIndex
          ? _value.selectIndex
          : selectIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_KitchenState extends _KitchenState {
  const _$_KitchenState(
      {this.isLoading = true,
      this.selectType = TrKeys.all,
      this.hasMore = true,
      final List<OrderData> orders = const [],
      this.selectOrder = null,
      this.query = '',
      this.selectIndex = 0})
      : _orders = orders,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String selectType;
  @override
  @JsonKey()
  final bool hasMore;
  final List<OrderData> _orders;
  @override
  @JsonKey()
  List<OrderData> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  @JsonKey()
  final OrderData? selectOrder;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final int selectIndex;

  @override
  String toString() {
    return 'KitchenState(isLoading: $isLoading, selectType: $selectType, hasMore: $hasMore, orders: $orders, selectOrder: $selectOrder, query: $query, selectIndex: $selectIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KitchenState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectType, selectType) ||
                other.selectType == selectType) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.selectOrder, selectOrder) ||
                other.selectOrder == selectOrder) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.selectIndex, selectIndex) ||
                other.selectIndex == selectIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      selectType,
      hasMore,
      const DeepCollectionEquality().hash(_orders),
      selectOrder,
      query,
      selectIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KitchenStateCopyWith<_$_KitchenState> get copyWith =>
      __$$_KitchenStateCopyWithImpl<_$_KitchenState>(this, _$identity);
}

abstract class _KitchenState extends KitchenState {
  const factory _KitchenState(
      {final bool isLoading,
      final String selectType,
      final bool hasMore,
      final List<OrderData> orders,
      final OrderData? selectOrder,
      final String query,
      final int selectIndex}) = _$_KitchenState;
  const _KitchenState._() : super._();

  @override
  bool get isLoading;
  @override
  String get selectType;
  @override
  bool get hasMore;
  @override
  List<OrderData> get orders;
  @override
  OrderData? get selectOrder;
  @override
  String get query;
  @override
  int get selectIndex;
  @override
  @JsonKey(ignore: true)
  _$$_KitchenStateCopyWith<_$_KitchenState> get copyWith =>
      throw _privateConstructorUsedError;
}
