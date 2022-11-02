// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TodoModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoStateData value) $default, {
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;
}

/// @nodoc
abstract class _$$TodoStateDataCopyWith<$Res> {
  factory _$$TodoStateDataCopyWith(
          _$TodoStateData value, $Res Function(_$TodoStateData) then) =
      __$$TodoStateDataCopyWithImpl<$Res>;
  $Res call({List<TodoModel> data});
}

/// @nodoc
class __$$TodoStateDataCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoStateDataCopyWith<$Res> {
  __$$TodoStateDataCopyWithImpl(
      _$TodoStateData _value, $Res Function(_$TodoStateData) _then)
      : super(_value, (v) => _then(v as _$TodoStateData));

  @override
  _$TodoStateData get _value => super._value as _$TodoStateData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TodoStateData(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ));
  }
}

/// @nodoc

class _$TodoStateData implements TodoStateData {
  const _$TodoStateData(final List<TodoModel> data) : _data = data;

  final List<TodoModel> _data;
  @override
  List<TodoModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TodoState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$TodoStateDataCopyWith<_$TodoStateData> get copyWith =>
      __$$TodoStateDataCopyWithImpl<_$TodoStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TodoModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoStateData value) $default, {
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TodoStateData implements TodoState {
  const factory TodoStateData(final List<TodoModel> data) = _$TodoStateData;

  List<TodoModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoStateDataCopyWith<_$TodoStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoStateLoadingCopyWith<$Res> {
  factory _$$TodoStateLoadingCopyWith(
          _$TodoStateLoading value, $Res Function(_$TodoStateLoading) then) =
      __$$TodoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoStateLoadingCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoStateLoadingCopyWith<$Res> {
  __$$TodoStateLoadingCopyWithImpl(
      _$TodoStateLoading _value, $Res Function(_$TodoStateLoading) _then)
      : super(_value, (v) => _then(v as _$TodoStateLoading));

  @override
  _$TodoStateLoading get _value => super._value as _$TodoStateLoading;
}

/// @nodoc

class _$TodoStateLoading implements TodoStateLoading {
  const _$TodoStateLoading();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TodoModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoStateData value) $default, {
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoStateLoading implements TodoState {
  const factory TodoStateLoading() = _$TodoStateLoading;
}

/// @nodoc
abstract class _$$TodoStateErrorCopyWith<$Res> {
  factory _$$TodoStateErrorCopyWith(
          _$TodoStateError value, $Res Function(_$TodoStateError) then) =
      __$$TodoStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$TodoStateErrorCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$TodoStateErrorCopyWith<$Res> {
  __$$TodoStateErrorCopyWithImpl(
      _$TodoStateError _value, $Res Function(_$TodoStateError) _then)
      : super(_value, (v) => _then(v as _$TodoStateError));

  @override
  _$TodoStateError get _value => super._value as _$TodoStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TodoStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$TodoStateError implements TodoStateError {
  const _$TodoStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'TodoState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$TodoStateErrorCopyWith<_$TodoStateError> get copyWith =>
      __$$TodoStateErrorCopyWithImpl<_$TodoStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<TodoModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<TodoModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoStateData value) $default, {
    required TResult Function(TodoStateLoading value) loading,
    required TResult Function(TodoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoStateData value)? $default, {
    TResult Function(TodoStateLoading value)? loading,
    TResult Function(TodoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoStateError implements TodoState {
  const factory TodoStateError(final dynamic error) = _$TodoStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoStateErrorCopyWith<_$TodoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
