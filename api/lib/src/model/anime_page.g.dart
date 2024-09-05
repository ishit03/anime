// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnimePage extends AnimePage {
  @override
  final BuiltList<AnimeNode>? data;
  @override
  final Paging? paging;

  factory _$AnimePage([void Function(AnimePageBuilder)? updates]) =>
      (new AnimePageBuilder()..update(updates))._build();

  _$AnimePage._({this.data, this.paging}) : super._();

  @override
  AnimePage rebuild(void Function(AnimePageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimePageBuilder toBuilder() => new AnimePageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimePage && data == other.data && paging == other.paging;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, paging.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimePage')
          ..add('data', data)
          ..add('paging', paging))
        .toString();
  }
}

class AnimePageBuilder implements Builder<AnimePage, AnimePageBuilder> {
  _$AnimePage? _$v;

  ListBuilder<AnimeNode>? _data;
  ListBuilder<AnimeNode> get data =>
      _$this._data ??= new ListBuilder<AnimeNode>();
  set data(ListBuilder<AnimeNode>? data) => _$this._data = data;

  PagingBuilder? _paging;
  PagingBuilder get paging => _$this._paging ??= new PagingBuilder();
  set paging(PagingBuilder? paging) => _$this._paging = paging;

  AnimePageBuilder() {
    AnimePage._defaults(this);
  }

  AnimePageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _paging = $v.paging?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimePage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimePage;
  }

  @override
  void update(void Function(AnimePageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimePage build() => _build();

  _$AnimePage _build() {
    _$AnimePage _$result;
    try {
      _$result = _$v ??
          new _$AnimePage._(data: _data?.build(), paging: _paging?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'paging';
        _paging?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnimePage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
