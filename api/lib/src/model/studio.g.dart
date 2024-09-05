// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Studio extends Studio {
  @override
  final int? id;
  @override
  final String? name;

  factory _$Studio([void Function(StudioBuilder)? updates]) =>
      (new StudioBuilder()..update(updates))._build();

  _$Studio._({this.id, this.name}) : super._();

  @override
  Studio rebuild(void Function(StudioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudioBuilder toBuilder() => new StudioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Studio && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Studio')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class StudioBuilder implements Builder<Studio, StudioBuilder> {
  _$Studio? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  StudioBuilder() {
    Studio._defaults(this);
  }

  StudioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Studio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Studio;
  }

  @override
  void update(void Function(StudioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Studio build() => _build();

  _$Studio _build() {
    final _$result = _$v ?? new _$Studio._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
