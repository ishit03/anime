//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/anime_node.dart';
import 'package:openapi/src/model/paging.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_page.g.dart';

/// Defines a single page containing multiple anime
///
/// Properties:
/// * [data]
/// * [paging]
@BuiltValue()
abstract class AnimePage implements Built<AnimePage, AnimePageBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<AnimeNode>? get data;

  @BuiltValueField(wireName: r'paging')
  Paging? get paging;

  AnimePage._();

  factory AnimePage([void updates(AnimePageBuilder b)]) = _$AnimePage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnimePageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnimePage> get serializer => _$AnimePageSerializer();
}

class _$AnimePageSerializer implements PrimitiveSerializer<AnimePage> {
  @override
  final Iterable<Type> types = const [AnimePage, _$AnimePage];

  @override
  final String wireName = r'AnimePage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnimePage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(AnimeNode)]),
      );
    }
    if (object.paging != null) {
      yield r'paging';
      yield serializers.serialize(
        object.paging,
        specifiedType: const FullType(Paging),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnimePage object, {
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
    required AnimePageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AnimeNode)]),
          ) as BuiltList<AnimeNode>;
          result.data.replace(valueDes);
          break;
        case r'paging':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Paging),
          ) as Paging;
          result.paging.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnimePage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnimePageBuilder();
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
