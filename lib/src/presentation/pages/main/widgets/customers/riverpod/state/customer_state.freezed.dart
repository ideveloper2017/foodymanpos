// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isMoreLoading => throw _privateConstructorUsedError;
  bool get createUserLoading => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<UserData> get users => throw _privateConstructorUsedError;
  UserData? get selectUser => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  CustomerModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isMoreLoading,
      bool createUserLoading,
      bool hasMore,
      String query,
      List<UserData> users,
      UserData? selectUser,
      int totalCount,
      CustomerModel? user});
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isMoreLoading = null,
    Object? createUserLoading = null,
    Object? hasMore = null,
    Object? query = null,
    Object? users = null,
    Object? selectUser = freezed,
    Object? totalCount = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createUserLoading: null == createUserLoading
          ? _value.createUserLoading
          : createUserLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
      selectUser: freezed == selectUser
          ? _value.selectUser
          : selectUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerStateCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$_CustomerStateCopyWith(
          _$_CustomerState value, $Res Function(_$_CustomerState) then) =
      __$$_CustomerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isMoreLoading,
      bool createUserLoading,
      bool hasMore,
      String query,
      List<UserData> users,
      UserData? selectUser,
      int totalCount,
      CustomerModel? user});
}

/// @nodoc
class __$$_CustomerStateCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$_CustomerState>
    implements _$$_CustomerStateCopyWith<$Res> {
  __$$_CustomerStateCopyWithImpl(
      _$_CustomerState _value, $Res Function(_$_CustomerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isMoreLoading = null,
    Object? createUserLoading = null,
    Object? hasMore = null,
    Object? query = null,
    Object? users = null,
    Object? selectUser = freezed,
    Object? totalCount = null,
    Object? user = freezed,
  }) {
    return _then(_$_CustomerState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      createUserLoading: null == createUserLoading
          ? _value.createUserLoading
          : createUserLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
      selectUser: freezed == selectUser
          ? _value.selectUser
          : selectUser // ignore: cast_nullable_to_non_nullable
              as UserData?,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ));
  }
}

/// @nodoc

class _$_CustomerState extends _CustomerState {
  const _$_CustomerState(
      {this.isLoading = false,
      this.isMoreLoading = false,
      this.createUserLoading = false,
      this.hasMore = true,
      this.query = '',
      final List<UserData> users = const [],
      this.selectUser = null,
      this.totalCount = 0,
      this.user = null})
      : _users = users,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isMoreLoading;
  @override
  @JsonKey()
  final bool createUserLoading;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final String query;
  final List<UserData> _users;
  @override
  @JsonKey()
  List<UserData> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  @JsonKey()
  final UserData? selectUser;
  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final CustomerModel? user;

  @override
  String toString() {
    return 'CustomerState(isLoading: $isLoading, isMoreLoading: $isMoreLoading, createUserLoading: $createUserLoading, hasMore: $hasMore, query: $query, users: $users, selectUser: $selectUser, totalCount: $totalCount, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading) &&
            (identical(other.createUserLoading, createUserLoading) ||
                other.createUserLoading == createUserLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.selectUser, selectUser) ||
                other.selectUser == selectUser) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isMoreLoading,
      createUserLoading,
      hasMore,
      query,
      const DeepCollectionEquality().hash(_users),
      selectUser,
      totalCount,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      __$$_CustomerStateCopyWithImpl<_$_CustomerState>(this, _$identity);
}

abstract class _CustomerState extends CustomerState {
  const factory _CustomerState(
      {final bool isLoading,
      final bool isMoreLoading,
      final bool createUserLoading,
      final bool hasMore,
      final String query,
      final List<UserData> users,
      final UserData? selectUser,
      final int totalCount,
      final CustomerModel? user}) = _$_CustomerState;
  const _CustomerState._() : super._();

  @override
  bool get isLoading;
  @override
  bool get isMoreLoading;
  @override
  bool get createUserLoading;
  @override
  bool get hasMore;
  @override
  String get query;
  @override
  List<UserData> get users;
  @override
  UserData? get selectUser;
  @override
  int get totalCount;
  @override
  CustomerModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerStateCopyWith<_$_CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}
