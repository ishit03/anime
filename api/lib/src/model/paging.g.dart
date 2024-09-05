// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Paging extends Paging {
  @override
  final String? previous;
  @override
  final String? next;

  factory _$Paging([void Function(PagingBuilder)? updates]) =>
      (new PagingBuilder()..update(updates))._build();

  _$Paging._({this.previous, this.next}) : super._();

  @override
  Paging rebuild(void Function(PagingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PagingBuilder toBuilder() => new PagingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Paging && previous == other.previous && next == other.next;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Paging')
          ..add('previous', previous)
          ..add('next', next))
        .toString();
  }
}

class PagingBuilder implements Builder<Paging, PagingBuilder> {
  _$Paging? _$v;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  PagingBuilder() {
    Paging._defaults(this);
  }

  PagingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _previous = $v.previous;
      _next = $v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Paging other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Paging;
  }

  @override
  void update(void Function(PagingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Paging build() => _build();

  _$Paging _build() {
    final _$result = _$v ?? new _$Paging._(previous: previous, next: next);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
