// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TodoModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoDetailStateData value) $default, {
    required TResult Function(TodoDetailStateLoading value) loading,
    required TResult Function(TodoDetailStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDetailStateCopyWith<$Res> {
  factory $TodoDetailStateCopyWith(
          TodoDetailState value, $Res Function(TodoDetailState) then) =
      _$TodoDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoDetailStateCopyWithImpl<$Res>
    implements $TodoDetailStateCopyWith<$Res> {
  _$TodoDetailStateCopyWithImpl(this._value, this._then);

  final TodoDetailState _value;
  // ignore: unused_field
  final $Res Function(TodoDetailState) _then;
}

/// @nodoc
abstract class _$$TodoDetailStateDataCopyWith<$Res> {
  factory _$$TodoDetailStateDataCopyWith(_$TodoDetailStateData value,
          $Res Function(_$TodoDetailStateData) then) =
      __$$TodoDetailStateDataCopyWithImpl<$Res>;
  $Res call({TodoModel data});
}

/// @nodoc
class __$$TodoDetailStateDataCopyWithImpl<$Res>
    extends _$TodoDetailStateCopyWithImpl<$Res>
    implements _$$TodoDetailStateDataCopyWith<$Res> {
  __$$TodoDetailStateDataCopyWithImpl(
      _$TodoDetailStateData _value, $Res Function(_$TodoDetailStateData) _then)
      : super(_value, (v) => _then(v as _$TodoDetailStateData));

  @override
  _$TodoDetailStateData get _value => super._value as _$TodoDetailStateData;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TodoDetailStateData(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TodoModel,
    ));
  }
}

/// @nodoc

class _$TodoDetailStateData implements TodoDetailStateData {
  const _$TodoDetailStateData(this.data);

  @override
  final TodoModel data;

  @override
  String toString() {
    return 'TodoDetailState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDetailStateData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$TodoDetailStateDataCopyWith<_$TodoDetailStateData> get copyWith =>
      __$$TodoDetailStateDataCopyWithImpl<_$TodoDetailStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TodoModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
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
    TResult Function(TodoDetailStateData value) $default, {
    required TResult Function(TodoDetailStateLoading value) loading,
    required TResult Function(TodoDetailStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TodoDetailStateData implements TodoDetailState {
  const factory TodoDetailStateData(final TodoModel data) =
      _$TodoDetailStateData;

  TodoModel get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoDetailStateDataCopyWith<_$TodoDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoDetailStateLoadingCopyWith<$Res> {
  factory _$$TodoDetailStateLoadingCopyWith(_$TodoDetailStateLoading value,
          $Res Function(_$TodoDetailStateLoading) then) =
      __$$TodoDetailStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoDetailStateLoadingCopyWithImpl<$Res>
    extends _$TodoDetailStateCopyWithImpl<$Res>
    implements _$$TodoDetailStateLoadingCopyWith<$Res> {
  __$$TodoDetailStateLoadingCopyWithImpl(_$TodoDetailStateLoading _value,
      $Res Function(_$TodoDetailStateLoading) _then)
      : super(_value, (v) => _then(v as _$TodoDetailStateLoading));

  @override
  _$TodoDetailStateLoading get _value =>
      super._value as _$TodoDetailStateLoading;
}

/// @nodoc

class _$TodoDetailStateLoading implements TodoDetailStateLoading {
  const _$TodoDetailStateLoading();

  @override
  String toString() {
    return 'TodoDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoDetailStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TodoModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
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
    TResult Function(TodoDetailStateData value) $default, {
    required TResult Function(TodoDetailStateLoading value) loading,
    required TResult Function(TodoDetailStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoDetailStateLoading implements TodoDetailState {
  const factory TodoDetailStateLoading() = _$TodoDetailStateLoading;
}

/// @nodoc
abstract class _$$TodoDetailStateErrorCopyWith<$Res> {
  factory _$$TodoDetailStateErrorCopyWith(_$TodoDetailStateError value,
          $Res Function(_$TodoDetailStateError) then) =
      __$$TodoDetailStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$TodoDetailStateErrorCopyWithImpl<$Res>
    extends _$TodoDetailStateCopyWithImpl<$Res>
    implements _$$TodoDetailStateErrorCopyWith<$Res> {
  __$$TodoDetailStateErrorCopyWithImpl(_$TodoDetailStateError _value,
      $Res Function(_$TodoDetailStateError) _then)
      : super(_value, (v) => _then(v as _$TodoDetailStateError));

  @override
  _$TodoDetailStateError get _value => super._value as _$TodoDetailStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$TodoDetailStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$TodoDetailStateError implements TodoDetailStateError {
  const _$TodoDetailStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'TodoDetailState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDetailStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$TodoDetailStateErrorCopyWith<_$TodoDetailStateError> get copyWith =>
      __$$TodoDetailStateErrorCopyWithImpl<_$TodoDetailStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TodoModel data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TodoModel data)? $default, {
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
    TResult Function(TodoDetailStateData value) $default, {
    required TResult Function(TodoDetailStateLoading value) loading,
    required TResult Function(TodoDetailStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoDetailStateData value)? $default, {
    TResult Function(TodoDetailStateLoading value)? loading,
    TResult Function(TodoDetailStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodoDetailStateError implements TodoDetailState {
  const factory TodoDetailStateError(final dynamic error) =
      _$TodoDetailStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$TodoDetailStateErrorCopyWith<_$TodoDetailStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
