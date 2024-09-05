//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paging.g.dart';

/// Paging
///
/// Properties:
/// * [previous] - URL to the previous page
/// * [next] - URL to the next page
@BuiltValue()
abstract class Paging implements Built<Paging, PagingBuilder> {
  /// URL to the previous page
  @BuiltValueField(wireName: r'previous')
  String? get previous;

  /// URL to the next page
  @BuiltValueField(wireName: r'next')
  String? get next;

  Paging._();

  factory Paging([void updates(PagingBuilder b)]) = _$Paging;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PagingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Paging> get serializer => _$PagingSerializer();
}

class _$PagingSerializer implements PrimitiveSerializer<Paging> {
  @override
  final Iterable<Type> types = const [Paging, _$Paging];

  @override
  final String wireName = r'Paging';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Paging object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.previous != null) {
      yield r'previous';
      yield serializers.serialize(
        object.previous,
        specifiedType: const FullType(String),
      );
    }
    if (object.next != null) {
      yield r'next';
      yield serializers.serialize(
        object.next,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Paging object, {
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
    required PagingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'previous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.previous = valueDes;
          break;
        case r'next':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.next = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Paging deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PagingBuilder();
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
