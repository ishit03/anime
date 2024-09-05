//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/anime_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_node.g.dart';

/// The node property holding the details
///
/// Properties:
/// * [node]
@BuiltValue()
abstract class AnimeNode implements Built<AnimeNode, AnimeNodeBuilder> {
  @BuiltValueField(wireName: r'node')
  AnimeDetails? get node;

  AnimeNode._();

  factory AnimeNode([void updates(AnimeNodeBuilder b)]) = _$AnimeNode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnimeNodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnimeNode> get serializer => _$AnimeNodeSerializer();
}

class _$AnimeNodeSerializer implements PrimitiveSerializer<AnimeNode> {
  @override
  final Iterable<Type> types = const [AnimeNode, _$AnimeNode];

  @override
  final String wireName = r'AnimeNode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnimeNode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.node != null) {
      yield r'node';
      yield serializers.serialize(
        object.node,
        specifiedType: const FullType(AnimeDetails),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnimeNode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnimeNodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'node':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AnimeDetails),
          ) as AnimeDetails;
          result.node.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnimeNode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnimeNodeBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
