// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnimeNode extends AnimeNode {
  @override
  final AnimeDetails? node;

  factory _$AnimeNode([void Function(AnimeNodeBuilder)? updates]) =>
      (new AnimeNodeBuilder()..update(updates))._build();

  _$AnimeNode._({this.node}) : super._();

  @override
  AnimeNode rebuild(void Function(AnimeNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeNodeBuilder toBuilder() => new AnimeNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeNode && node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimeNode')..add('node', node))
        .toString();
  }
}

class AnimeNodeBuilder implements Builder<AnimeNode, AnimeNodeBuilder> {
  _$AnimeNode? _$v;

  AnimeDetailsBuilder? _node;
  AnimeDetailsBuilder get node => _$this._node ??= new AnimeDetailsBuilder();
  set node(AnimeDetailsBuilder? node) => _$this._node = node;

  AnimeNodeBuilder() {
    AnimeNode._defaults(this);
  }

  AnimeNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeNode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimeNode;
  }

  @override
  void update(void Function(AnimeNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimeNode build() => _build();

  _$AnimeNode _build() {
    _$AnimeNode _$result;
    try {
      _$result = _$v ?? new _$AnimeNode._(node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnimeNode', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
