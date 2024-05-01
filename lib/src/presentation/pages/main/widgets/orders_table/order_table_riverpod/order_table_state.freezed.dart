// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderTableState {
  bool get isListView => throw _privateConstructorUsedError;
  int get selectTabIndex => throw _privateConstructorUsedError;
  bool get showFilter => throw _privateConstructorUsedError;
  List<dynamic> get selectOrders => throw _privateConstructorUsedError;
  bool get isAllSelect => throw _privateConstructorUsedError;
  Set<Marker> get setOfMarker =>
      throw _privateConstructorUsedError; // @Default('') String usersQuery,
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderTableStateCopyWith<OrderTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTableStateCopyWith<$Res> {
  factory $OrderTableStateCopyWith(
          OrderTableState value, $Res Function(OrderTableState) then) =
      _$OrderTableStateCopyWithImpl<$Res, OrderTableState>;
  @useResult
  $Res call(
      {bool isListView,
      int selectTabIndex,
      bool showFilter,
      List<dynamic> selectOrders,
      bool isAllSelect,
      Set<Marker> setOfMarker,
      DateTime? start,
      DateTime? end});
}

/// @nodoc
class _$OrderTableStateCopyWithImpl<$Res, $Val extends OrderTableState>
    implements $OrderTableStateCopyWith<$Res> {
  _$OrderTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
    Object? selectTabIndex = null,
    Object? showFilter = null,
    Object? selectOrders = null,
    Object? isAllSelect = null,
    Object? setOfMarker = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
      selectTabIndex: null == selectTabIndex
          ? _value.selectTabIndex
          : selectTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      showFilter: null == showFilter
          ? _value.showFilter
          : showFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      selectOrders: null == selectOrders
          ? _value.selectOrders
          : selectOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isAllSelect: null == isAllSelect
          ? _value.isAllSelect
          : isAllSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      setOfMarker: null == setOfMarker
          ? _value.setOfMarker
          : setOfMarker // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderTableStateCopyWith<$Res>
    implements $OrderTableStateCopyWith<$Res> {
  factory _$$_OrderTableStateCopyWith(
          _$_OrderTableState value, $Res Function(_$_OrderTableState) then) =
      __$$_OrderTableStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isListView,
      int selectTabIndex,
      bool showFilter,
      List<dynamic> selectOrders,
      bool isAllSelect,
      Set<Marker> setOfMarker,
      DateTime? start,
      DateTime? end});
}

/// @nodoc
class __$$_OrderTableStateCopyWithImpl<$Res>
    extends _$OrderTableStateCopyWithImpl<$Res, _$_OrderTableState>
    implements _$$_OrderTableStateCopyWith<$Res> {
  __$$_OrderTableStateCopyWithImpl(
      _$_OrderTableState _value, $Res Function(_$_OrderTableState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isListView = null,
    Object? selectTabIndex = null,
    Object? showFilter = null,
    Object? selectOrders = null,
    Object? isAllSelect = null,
    Object? setOfMarker = null,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_OrderTableState(
      isListView: null == isListView
          ? _value.isListView
          : isListView // ignore: cast_nullable_to_non_nullable
              as bool,
      selectTabIndex: null == selectTabIndex
          ? _value.selectTabIndex
          : selectTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      showFilter: null == showFilter
          ? _value.showFilter
          : showFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      selectOrders: null == selectOrders
          ? _value._selectOrders
          : selectOrders // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isAllSelect: null == isAllSelect
          ? _value.isAllSelect
          : isAllSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      setOfMarker: null == setOfMarker
          ? _value._setOfMarker
          : setOfMarker // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_OrderTableState extends _OrderTableState {
  const _$_OrderTableState(
      {this.isListView = false,
      this.selectTabIndex = 0,
      this.showFilter = false,
      final List<dynamic> selectOrders = const [],
      this.isAllSelect = false,
      final Set<Marker> setOfMarker = const {},
      this.start = null,
      this.end = null})
      : _selectOrders = selectOrders,
        _setOfMarker = setOfMarker,
        super._();

  @override
  @JsonKey()
  final bool isListView;
  @override
  @JsonKey()
  final int selectTabIndex;
  @override
  @JsonKey()
  final bool showFilter;
  final List<dynamic> _selectOrders;
  @override
  @JsonKey()
  List<dynamic> get selectOrders {
    if (_selectOrders is EqualUnmodifiableListView) return _selectOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectOrders);
  }

  @override
  @JsonKey()
  final bool isAllSelect;
  final Set<Marker> _setOfMarker;
  @override
  @JsonKey()
  Set<Marker> get setOfMarker {
    if (_setOfMarker is EqualUnmodifiableSetView) return _setOfMarker;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_setOfMarker);
  }

// @Default('') String usersQuery,
  @override
  @JsonKey()
  final DateTime? start;
  @override
  @JsonKey()
  final DateTime? end;

  @override
  String toString() {
    return 'OrderTableState(isListView: $isListView, selectTabIndex: $selectTabIndex, showFilter: $showFilter, selectOrders: $selectOrders, isAllSelect: $isAllSelect, setOfMarker: $setOfMarker, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderTableState &&
            (identical(other.isListView, isListView) ||
                other.isListView == isListView) &&
            (identical(other.selectTabIndex, selectTabIndex) ||
                other.selectTabIndex == selectTabIndex) &&
            (identical(other.showFilter, showFilter) ||
                other.showFilter == showFilter) &&
            const DeepCollectionEquality()
                .equals(other._selectOrders, _selectOrders) &&
            (identical(other.isAllSelect, isAllSelect) ||
                other.isAllSelect == isAllSelect) &&
            const DeepCollectionEquality()
                .equals(other._setOfMarker, _setOfMarker) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isListView,
      selectTabIndex,
      showFilter,
      const DeepCollectionEquality().hash(_selectOrders),
      isAllSelect,
      const DeepCollectionEquality().hash(_setOfMarker),
      start,
      end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderTableStateCopyWith<_$_OrderTableState> get copyWith =>
      __$$_OrderTableStateCopyWithImpl<_$_OrderTableState>(this, _$identity);
}

abstract class _OrderTableState extends OrderTableState {
  const factory _OrderTableState(
      {final bool isListView,
      final int selectTabIndex,
      final bool showFilter,
      final List<dynamic> selectOrders,
      final bool isAllSelect,
      final Set<Marker> setOfMarker,
      final DateTime? start,
      final DateTime? end}) = _$_OrderTableState;
  const _OrderTableState._() : super._();

  @override
  bool get isListView;
  @override
  int get selectTabIndex;
  @override
  bool get showFilter;
  @override
  List<dynamic> get selectOrders;
  @override
  bool get isAllSelect;
  @override
  Set<Marker> get setOfMarker;
  @override // @Default('') String usersQuery,
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  @JsonKey(ignore: true)
  _$$_OrderTableStateCopyWith<_$_OrderTableState> get copyWith =>
      throw _privateConstructorUsedError;
}
