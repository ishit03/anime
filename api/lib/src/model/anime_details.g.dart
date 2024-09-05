// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnimeDetails extends AnimeDetails {
  @override
  final int id;
  @override
  final String title;
  @override
  final Picture mainPicture;
  @override
  final String? synopsis;
  @override
  final String? status;
  @override
  final String? rating;
  @override
  final int? rank;
  @override
  final String? mediaType;
  @override
  final BuiltList<Genre>? genres;
  @override
  final BuiltList<Studio>? studio;

  factory _$AnimeDetails([void Function(AnimeDetailsBuilder)? updates]) =>
      (new AnimeDetailsBuilder()..update(updates))._build();

  _$AnimeDetails._(
      {required this.id,
      required this.title,
      required this.mainPicture,
      this.synopsis,
      this.status,
      this.rating,
      this.rank,
      this.mediaType,
      this.genres,
      this.studio})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AnimeDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(title, r'AnimeDetails', 'title');
    BuiltValueNullFieldError.checkNotNull(
        mainPicture, r'AnimeDetails', 'mainPicture');
  }

  @override
  AnimeDetails rebuild(void Function(AnimeDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeDetailsBuilder toBuilder() => new AnimeDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeDetails &&
        id == other.id &&
        title == other.title &&
        mainPicture == other.mainPicture &&
        synopsis == other.synopsis &&
        status == other.status &&
        rating == other.rating &&
        rank == other.rank &&
        mediaType == other.mediaType &&
        genres == other.genres &&
        studio == other.studio;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, mainPicture.hashCode);
    _$hash = $jc(_$hash, synopsis.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, rank.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, studio.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimeDetails')
          ..add('id', id)
          ..add('title', title)
          ..add('mainPicture', mainPicture)
          ..add('synopsis', synopsis)
          ..add('status', status)
          ..add('rating', rating)
          ..add('rank', rank)
          ..add('mediaType', mediaType)
          ..add('genres', genres)
          ..add('studio', studio))
        .toString();
  }
}

class AnimeDetailsBuilder
    implements Builder<AnimeDetails, AnimeDetailsBuilder> {
  _$AnimeDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  PictureBuilder? _mainPicture;
  PictureBuilder get mainPicture =>
      _$this._mainPicture ??= new PictureBuilder();
  set mainPicture(PictureBuilder? mainPicture) =>
      _$this._mainPicture = mainPicture;

  String? _synopsis;
  String? get synopsis => _$this._synopsis;
  set synopsis(String? synopsis) => _$this._synopsis = synopsis;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  String? _mediaType;
  String? get mediaType => _$this._mediaType;
  set mediaType(String? mediaType) => _$this._mediaType = mediaType;

  ListBuilder<Genre>? _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre>? genres) => _$this._genres = genres;

  ListBuilder<Studio>? _studio;
  ListBuilder<Studio> get studio =>
      _$this._studio ??= new ListBuilder<Studio>();
  set studio(ListBuilder<Studio>? studio) => _$this._studio = studio;

  AnimeDetailsBuilder() {
    AnimeDetails._defaults(this);
  }

  AnimeDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _mainPicture = $v.mainPicture.toBuilder();
      _synopsis = $v.synopsis;
      _status = $v.status;
      _rating = $v.rating;
      _rank = $v.rank;
      _mediaType = $v.mediaType;
      _genres = $v.genres?.toBuilder();
      _studio = $v.studio?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnimeDetails;
  }

  @override
  void update(void Function(AnimeDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimeDetails build() => _build();

  _$AnimeDetails _build() {
    _$AnimeDetails _$result;
    try {
      _$result = _$v ??
          new _$AnimeDetails._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'AnimeDetails', 'id'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'AnimeDetails', 'title'),
              mainPicture: mainPicture.build(),
              synopsis: synopsis,
              status: status,
              rating: rating,
              rank: rank,
              mediaType: mediaType,
              genres: _genres?.build(),
              studio: _studio?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainPicture';
        mainPicture.build();

        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'studio';
        _studio?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnimeDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
