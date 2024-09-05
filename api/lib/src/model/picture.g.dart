// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Picture extends Picture {
  @override
  final String? medium;
  @override
  final String? large;

  factory _$Picture([void Function(PictureBuilder)? updates]) =>
      (new PictureBuilder()..update(updates))._build();

  _$Picture._({this.medium, this.large}) : super._();

  @override
  Picture rebuild(void Function(PictureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PictureBuilder toBuilder() => new PictureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Picture && medium == other.medium && large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Picture')
          ..add('medium', medium)
          ..add('large', large))
        .toString();
  }
}

class PictureBuilder implements Builder<Picture, PictureBuilder> {
  _$Picture? _$v;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  PictureBuilder() {
    Picture._defaults(this);
  }

  PictureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _medium = $v.medium;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Picture other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Picture;
  }

  @override
  void update(void Function(PictureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Picture build() => _build();

  _$Picture _build() {
    final _$result = _$v ?? new _$Picture._(medium: medium, large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
