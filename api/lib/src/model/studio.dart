//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'studio.g.dart';

/// Studio
///
/// Properties:
/// * [id] - unique studio id
/// * [name] - studio name
@BuiltValue()
abstract class Studio implements Built<Studio, StudioBuilder> {
  /// unique studio id
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// studio name
  @BuiltValueField(wireName: r'name')
  String? get name;

  Studio._();

  factory Studio([void updates(StudioBuilder b)]) = _$Studio;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StudioBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Studio> get serializer => _$StudioSerializer();
}

class _$StudioSerializer implements PrimitiveSerializer<Studio> {
  @override
  final Iterable<Type> types = const [Studio, _$Studio];

  @override
  final String wireName = r'Studio';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Studio object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Studio object, {
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
    required StudioBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Studio deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StudioBuilder();
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
