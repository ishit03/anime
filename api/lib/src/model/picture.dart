//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'picture.g.dart';

/// Picture
///
/// Properties:
/// * [medium] - Medium resolution photo URL
/// * [large] - Large resolution photo URL
@BuiltValue()
abstract class Picture implements Built<Picture, PictureBuilder> {
  /// Medium resolution photo URL
  @BuiltValueField(wireName: r'medium')
  String? get medium;

  /// Large resolution photo URL
  @BuiltValueField(wireName: r'large')
  String? get large;

  Picture._();

  factory Picture([void updates(PictureBuilder b)]) = _$Picture;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PictureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Picture> get serializer => _$PictureSerializer();
}

class _$PictureSerializer implements PrimitiveSerializer<Picture> {
  @override
  final Iterable<Type> types = const [Picture, _$Picture];

  @override
  final String wireName = r'Picture';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Picture object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.medium != null) {
      yield r'medium';
      yield serializers.serialize(
        object.medium,
        specifiedType: const FullType(String),
      );
    }
    if (object.large != null) {
      yield r'large';
      yield serializers.serialize(
        object.large,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Picture object, {
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
    required PictureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'medium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.medium = valueDes;
          break;
        case r'large':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.large = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Picture deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PictureBuilder();
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
