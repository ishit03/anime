//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/genre.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/picture.dart';
import 'package:openapi/src/model/studio.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anime_details.g.dart';

/// AnimeDetails
///
/// Properties:
/// * [id] - Unique anime id
/// * [title] - The title of anime
/// * [mainPicture]
/// * [synopsis] - The synopsis of anime
/// * [status] - Current status of anime
/// * [rating] - PG rating for anime
/// * [rank] - Ranks based on popularity
/// * [mediaType]
/// * [genres]
/// * [studio]
@BuiltValue()
abstract class AnimeDetails
    implements Built<AnimeDetails, AnimeDetailsBuilder> {
  /// Unique anime id
  @BuiltValueField(wireName: r'id')
  int get id;

  /// The title of anime
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'main_picture')
  Picture get mainPicture;

  /// The synopsis of anime
  @BuiltValueField(wireName: r'synopsis')
  String? get synopsis;

  /// Current status of anime
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// PG rating for anime
  @BuiltValueField(wireName: r'rating')
  String? get rating;

  /// Ranks based on popularity
  @BuiltValueField(wireName: r'rank')
  int? get rank;

  @BuiltValueField(wireName: r'media_type')
  String? get mediaType;

  @BuiltValueField(wireName: r'genres')
  BuiltList<Genre>? get genres;

  @BuiltValueField(wireName: r'studio')
  BuiltList<Studio>? get studio;

  AnimeDetails._();

  factory AnimeDetails([void updates(AnimeDetailsBuilder b)]) = _$AnimeDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnimeDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnimeDetails> get serializer => _$AnimeDetailsSerializer();
}

class _$AnimeDetailsSerializer implements PrimitiveSerializer<AnimeDetails> {
  @override
  final Iterable<Type> types = const [AnimeDetails, _$AnimeDetails];

  @override
  final String wireName = r'AnimeDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnimeDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'main_picture';
    yield serializers.serialize(
      object.mainPicture,
      specifiedType: const FullType(Picture),
    );
    if (object.synopsis != null) {
      yield r'synopsis';
      yield serializers.serialize(
        object.synopsis,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(String),
      );
    }
    if (object.rank != null) {
      yield r'rank';
      yield serializers.serialize(
        object.rank,
        specifiedType: const FullType(int),
      );
    }
    if (object.mediaType != null) {
      yield r'media_type';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(String),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType(BuiltList, [FullType(Genre)]),
      );
    }
    if (object.studio != null) {
      yield r'studio';
      yield serializers.serialize(
        object.studio,
        specifiedType: const FullType(BuiltList, [FullType(Studio)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnimeDetails object, {
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
    required AnimeDetailsBuilder result,
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'main_picture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Picture),
          ) as Picture;
          result.mainPicture.replace(valueDes);
          break;
        case r'synopsis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.synopsis = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rating = valueDes;
          break;
        case r'rank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rank = valueDes;
          break;
        case r'media_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mediaType = valueDes;
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Genre)]),
          ) as BuiltList<Genre>;
          result.genres.replace(valueDes);
          break;
        case r'studio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Studio)]),
          ) as BuiltList<Studio>;
          result.studio.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnimeDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnimeDetailsBuilder();
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
