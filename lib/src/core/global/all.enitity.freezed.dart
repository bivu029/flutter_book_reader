// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all.enitity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(2)
  set description(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreImplCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$GenreImplCopyWith(
          _$GenreImpl value, $Res Function(_$GenreImpl) then) =
      __$$GenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description});
}

/// @nodoc
class __$$GenreImplCopyWithImpl<$Res>
    extends _$GenreCopyWithImpl<$Res, _$GenreImpl>
    implements _$$GenreImplCopyWith<$Res> {
  __$$GenreImplCopyWithImpl(
      _$GenreImpl _value, $Res Function(_$GenreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$GenreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 30)
class _$GenreImpl extends _Genre with DiagnosticableTreeMixin {
  _$GenreImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.description})
      : super._();

  factory _$GenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreImplFromJson(json);

  @override
  @HiveField(0)
  String id;
  @override
  @HiveField(1)
  String name;
  @override
  @HiveField(2)
  String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Genre(id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Genre'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      __$$GenreImplCopyWithImpl<_$GenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreImplToJson(
      this,
    );
  }
}

abstract class _Genre extends Genre {
  factory _Genre(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @HiveField(2) required String description}) = _$GenreImpl;
  _Genre._() : super._();

  factory _Genre.fromJson(Map<String, dynamic> json) = _$GenreImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @HiveField(0)
  set id(String value);
  @override
  @HiveField(1)
  String get name;
  @HiveField(1)
  set name(String value);
  @override
  @HiveField(2)
  String get description;
  @HiveField(2)
  set description(String value);
  @override
  @JsonKey(ignore: true)
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubGenre _$SubGenreFromJson(Map<String, dynamic> json) {
  return _SubGenre.fromJson(json);
}

/// @nodoc
mixin _$SubGenre {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(0)
  set id(String value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  set name(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(2)
  set description(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubGenreCopyWith<SubGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubGenreCopyWith<$Res> {
  factory $SubGenreCopyWith(SubGenre value, $Res Function(SubGenre) then) =
      _$SubGenreCopyWithImpl<$Res, SubGenre>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description});
}

/// @nodoc
class _$SubGenreCopyWithImpl<$Res, $Val extends SubGenre>
    implements $SubGenreCopyWith<$Res> {
  _$SubGenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubGenreImplCopyWith<$Res>
    implements $SubGenreCopyWith<$Res> {
  factory _$$SubGenreImplCopyWith(
          _$SubGenreImpl value, $Res Function(_$SubGenreImpl) then) =
      __$$SubGenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String description});
}

/// @nodoc
class __$$SubGenreImplCopyWithImpl<$Res>
    extends _$SubGenreCopyWithImpl<$Res, _$SubGenreImpl>
    implements _$$SubGenreImplCopyWith<$Res> {
  __$$SubGenreImplCopyWithImpl(
      _$SubGenreImpl _value, $Res Function(_$SubGenreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$SubGenreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 31)
class _$SubGenreImpl extends _SubGenre with DiagnosticableTreeMixin {
  _$SubGenreImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) required this.description})
      : super._();

  factory _$SubGenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubGenreImplFromJson(json);

  @override
  @HiveField(0)
  String id;
  @override
  @HiveField(1)
  String name;
  @override
  @HiveField(2)
  String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubGenre(id: $id, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubGenre'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubGenreImplCopyWith<_$SubGenreImpl> get copyWith =>
      __$$SubGenreImplCopyWithImpl<_$SubGenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubGenreImplToJson(
      this,
    );
  }
}

abstract class _SubGenre extends SubGenre {
  factory _SubGenre(
      {@HiveField(0) required String id,
      @HiveField(1) required String name,
      @HiveField(2) required String description}) = _$SubGenreImpl;
  _SubGenre._() : super._();

  factory _SubGenre.fromJson(Map<String, dynamic> json) =
      _$SubGenreImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @HiveField(0)
  set id(String value);
  @override
  @HiveField(1)
  String get name;
  @HiveField(1)
  set name(String value);
  @override
  @HiveField(2)
  String get description;
  @HiveField(2)
  set description(String value);
  @override
  @JsonKey(ignore: true)
  _$$SubGenreImplCopyWith<_$SubGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  set title(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get content => throw _privateConstructorUsedError;
  @HiveField(2)
  set content(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get isFree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String content,
      @HiveField(3) bool isFree});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isFree = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
          _$ChapterImpl value, $Res Function(_$ChapterImpl) then) =
      __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String content,
      @HiveField(3) bool isFree});
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
      _$ChapterImpl _value, $Res Function(_$ChapterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? isFree = null,
  }) {
    return _then(_$ChapterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFree: null == isFree
          ? _value.isFree
          : isFree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 72)
class _$ChapterImpl extends _Chapter with DiagnosticableTreeMixin {
  _$ChapterImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.content,
      @HiveField(3) required this.isFree})
      : super._();

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  String title;
  @override
  @HiveField(2)
  String content;
  @override
  @HiveField(3)
  final bool isFree;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Chapter(id: $id, title: $title, content: $content, isFree: $isFree)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Chapter'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('isFree', isFree));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(
      this,
    );
  }
}

abstract class _Chapter extends Chapter {
  factory _Chapter(
      {@HiveField(0) required final String id,
      @HiveField(1) required String title,
      @HiveField(2) required String content,
      @HiveField(3) required final bool isFree}) = _$ChapterImpl;
  _Chapter._() : super._();

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @HiveField(1)
  set title(String value);
  @override
  @HiveField(2)
  String get content;
  @HiveField(2)
  set content(String value);
  @override
  @HiveField(3)
  bool get isFree;
  @override
  @JsonKey(ignore: true)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterList _$ChapterListFromJson(Map<String, dynamic> json) {
  return _ChapterList.fromJson(json);
}

/// @nodoc
mixin _$ChapterList {
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get bookId => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Chapter> get chapter => throw _privateConstructorUsedError;
  @HiveField(3)
  set chapter(List<Chapter> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterListCopyWith<ChapterList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterListCopyWith<$Res> {
  factory $ChapterListCopyWith(
          ChapterList value, $Res Function(ChapterList) then) =
      _$ChapterListCopyWithImpl<$Res, ChapterList>;
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String bookId,
      @HiveField(3) List<Chapter> chapter});
}

/// @nodoc
class _$ChapterListCopyWithImpl<$Res, $Val extends ChapterList>
    implements $ChapterListCopyWith<$Res> {
  _$ChapterListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? chapter = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterListImplCopyWith<$Res>
    implements $ChapterListCopyWith<$Res> {
  factory _$$ChapterListImplCopyWith(
          _$ChapterListImpl value, $Res Function(_$ChapterListImpl) then) =
      __$$ChapterListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String bookId,
      @HiveField(3) List<Chapter> chapter});
}

/// @nodoc
class __$$ChapterListImplCopyWithImpl<$Res>
    extends _$ChapterListCopyWithImpl<$Res, _$ChapterListImpl>
    implements _$$ChapterListImplCopyWith<$Res> {
  __$$ChapterListImplCopyWithImpl(
      _$ChapterListImpl _value, $Res Function(_$ChapterListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? chapter = null,
  }) {
    return _then(_$ChapterListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 33)
class _$ChapterListImpl extends _ChapterList with DiagnosticableTreeMixin {
  _$ChapterListImpl(
      {@HiveField(1) required this.id,
      @HiveField(2) required this.bookId,
      @HiveField(3) required this.chapter})
      : super._();

  factory _$ChapterListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterListImplFromJson(json);

  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String bookId;
  @override
  @HiveField(3)
  List<Chapter> chapter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChapterList(id: $id, bookId: $bookId, chapter: $chapter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChapterList'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('bookId', bookId))
      ..add(DiagnosticsProperty('chapter', chapter));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterListImplCopyWith<_$ChapterListImpl> get copyWith =>
      __$$ChapterListImplCopyWithImpl<_$ChapterListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterListImplToJson(
      this,
    );
  }
}

abstract class _ChapterList extends ChapterList {
  factory _ChapterList(
      {@HiveField(1) required final String id,
      @HiveField(2) required final String bookId,
      @HiveField(3) required List<Chapter> chapter}) = _$ChapterListImpl;
  _ChapterList._() : super._();

  factory _ChapterList.fromJson(Map<String, dynamic> json) =
      _$ChapterListImpl.fromJson;

  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String get bookId;
  @override
  @HiveField(3)
  List<Chapter> get chapter;
  @HiveField(3)
  set chapter(List<Chapter> value);
  @override
  @JsonKey(ignore: true)
  _$$ChapterListImplCopyWith<_$ChapterListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get authorname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({@HiveField(1) String? id, @HiveField(2) String authorname});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorname = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorname: null == authorname
          ? _value.authorname
          : authorname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
          _$AuthorImpl value, $Res Function(_$AuthorImpl) then) =
      __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(1) String? id, @HiveField(2) String authorname});
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
      _$AuthorImpl _value, $Res Function(_$AuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorname = null,
  }) {
    return _then(_$AuthorImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorname: null == authorname
          ? _value.authorname
          : authorname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 63)
class _$AuthorImpl extends _Author with DiagnosticableTreeMixin {
  _$AuthorImpl({@HiveField(1) this.id, @HiveField(2) required this.authorname})
      : super._();

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  @HiveField(1)
  final String? id;
  @override
  @HiveField(2)
  final String authorname;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Author(id: $id, authorname: $authorname)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Author'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('authorname', authorname));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorname, authorname) ||
                other.authorname == authorname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(
      this,
    );
  }
}

abstract class _Author extends Author {
  factory _Author(
      {@HiveField(1) final String? id,
      @HiveField(2) required final String authorname}) = _$AuthorImpl;
  _Author._() : super._();

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  @HiveField(1)
  String? get id;
  @override
  @HiveField(2)
  String get authorname;
  @override
  @JsonKey(ignore: true)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  set title(String value) => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(2)
  set description(String value) => throw _privateConstructorUsedError;
  @HiveField(3)
  Author get author => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: null)
  String? get bookCover => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: null)
  set bookCover(String? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get isHot => throw _privateConstructorUsedError;
  @HiveField(5)
  set isHot(bool? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Genre> get genres => throw _privateConstructorUsedError;
  @HiveField(6)
  set genres(List<Genre> value) => throw _privateConstructorUsedError;
  @HiveField(7)
  List<SubGenre> get subGenres => throw _privateConstructorUsedError;
  @HiveField(7)
  set subGenres(List<SubGenre> value) =>
      throw _privateConstructorUsedError; //  @HiveField(8)
// required List<Chapter> chapters,
  @HiveField(8)
  ChapterList? get chapterList =>
      throw _privateConstructorUsedError; //  @HiveField(8)
// required List<Chapter> chapters,
  @HiveField(8)
  set chapterList(ChapterList? value) => throw _privateConstructorUsedError;
  @HiveField(9)
  int get count => throw _privateConstructorUsedError;
  @HiveField(9)
  set count(int value) => throw _privateConstructorUsedError;
  @HiveField(10)
  double get rating => throw _privateConstructorUsedError;
  @HiveField(10)
  set rating(double value) => throw _privateConstructorUsedError;
  @HiveField(11)
  int get likeCount => throw _privateConstructorUsedError;
  @HiveField(11)
  set likeCount(int value) => throw _privateConstructorUsedError;
  @HiveField(12)
  int get dislikeCount => throw _privateConstructorUsedError;
  @HiveField(12)
  set dislikeCount(int value) => throw _privateConstructorUsedError;
  @HiveField(13, defaultValue: [])
  List<String> get bookstatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String description,
      @HiveField(3) Author author,
      @HiveField(4, defaultValue: null) String? bookCover,
      @HiveField(5) bool? isHot,
      @HiveField(6) List<Genre> genres,
      @HiveField(7) List<SubGenre> subGenres,
      @HiveField(8) ChapterList? chapterList,
      @HiveField(9) int count,
      @HiveField(10) double rating,
      @HiveField(11) int likeCount,
      @HiveField(12) int dislikeCount,
      @HiveField(13, defaultValue: []) List<String> bookstatus});

  $AuthorCopyWith<$Res> get author;
  $ChapterListCopyWith<$Res>? get chapterList;
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? bookCover = freezed,
    Object? isHot = freezed,
    Object? genres = null,
    Object? subGenres = null,
    Object? chapterList = freezed,
    Object? count = null,
    Object? rating = null,
    Object? likeCount = null,
    Object? dislikeCount = null,
    Object? bookstatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      bookCover: freezed == bookCover
          ? _value.bookCover
          : bookCover // ignore: cast_nullable_to_non_nullable
              as String?,
      isHot: freezed == isHot
          ? _value.isHot
          : isHot // ignore: cast_nullable_to_non_nullable
              as bool?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      subGenres: null == subGenres
          ? _value.subGenres
          : subGenres // ignore: cast_nullable_to_non_nullable
              as List<SubGenre>,
      chapterList: freezed == chapterList
          ? _value.chapterList
          : chapterList // ignore: cast_nullable_to_non_nullable
              as ChapterList?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookstatus: null == bookstatus
          ? _value.bookstatus
          : bookstatus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterListCopyWith<$Res>? get chapterList {
    if (_value.chapterList == null) {
      return null;
    }

    return $ChapterListCopyWith<$Res>(_value.chapterList!, (value) {
      return _then(_value.copyWith(chapterList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) String description,
      @HiveField(3) Author author,
      @HiveField(4, defaultValue: null) String? bookCover,
      @HiveField(5) bool? isHot,
      @HiveField(6) List<Genre> genres,
      @HiveField(7) List<SubGenre> subGenres,
      @HiveField(8) ChapterList? chapterList,
      @HiveField(9) int count,
      @HiveField(10) double rating,
      @HiveField(11) int likeCount,
      @HiveField(12) int dislikeCount,
      @HiveField(13, defaultValue: []) List<String> bookstatus});

  @override
  $AuthorCopyWith<$Res> get author;
  @override
  $ChapterListCopyWith<$Res>? get chapterList;
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? bookCover = freezed,
    Object? isHot = freezed,
    Object? genres = null,
    Object? subGenres = null,
    Object? chapterList = freezed,
    Object? count = null,
    Object? rating = null,
    Object? likeCount = null,
    Object? dislikeCount = null,
    Object? bookstatus = null,
  }) {
    return _then(_$BookImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      bookCover: freezed == bookCover
          ? _value.bookCover
          : bookCover // ignore: cast_nullable_to_non_nullable
              as String?,
      isHot: freezed == isHot
          ? _value.isHot
          : isHot // ignore: cast_nullable_to_non_nullable
              as bool?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      subGenres: null == subGenres
          ? _value.subGenres
          : subGenres // ignore: cast_nullable_to_non_nullable
              as List<SubGenre>,
      chapterList: freezed == chapterList
          ? _value.chapterList
          : chapterList // ignore: cast_nullable_to_non_nullable
              as ChapterList?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      bookstatus: null == bookstatus
          ? _value.bookstatus
          : bookstatus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 34)
class _$BookImpl extends _Book with DiagnosticableTreeMixin {
  _$BookImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.description,
      @HiveField(3) required this.author,
      @HiveField(4, defaultValue: null) this.bookCover,
      @HiveField(5) this.isHot,
      @HiveField(6) required this.genres,
      @HiveField(7) required this.subGenres,
      @HiveField(8) required this.chapterList,
      @HiveField(9) this.count = 0,
      @HiveField(10) this.rating = 0,
      @HiveField(11) this.likeCount = 0,
      @HiveField(12) this.dislikeCount = 0,
      @HiveField(13, defaultValue: []) required this.bookstatus})
      : super._();

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  String title;
  @override
  @HiveField(2)
  String description;
  @override
  @HiveField(3)
  final Author author;
  @override
  @HiveField(4, defaultValue: null)
  String? bookCover;
  @override
  @HiveField(5)
  bool? isHot;
  @override
  @HiveField(6)
  List<Genre> genres;
  @override
  @HiveField(7)
  List<SubGenre> subGenres;
//  @HiveField(8)
// required List<Chapter> chapters,
  @override
  @HiveField(8)
  ChapterList? chapterList;
  @override
  @JsonKey()
  @HiveField(9)
  int count;
  @override
  @JsonKey()
  @HiveField(10)
  double rating;
  @override
  @JsonKey()
  @HiveField(11)
  int likeCount;
  @override
  @JsonKey()
  @HiveField(12)
  int dislikeCount;
  @override
  @HiveField(13, defaultValue: [])
  final List<String> bookstatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Book(id: $id, title: $title, description: $description, author: $author, bookCover: $bookCover, isHot: $isHot, genres: $genres, subGenres: $subGenres, chapterList: $chapterList, count: $count, rating: $rating, likeCount: $likeCount, dislikeCount: $dislikeCount, bookstatus: $bookstatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Book'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('bookCover', bookCover))
      ..add(DiagnosticsProperty('isHot', isHot))
      ..add(DiagnosticsProperty('genres', genres))
      ..add(DiagnosticsProperty('subGenres', subGenres))
      ..add(DiagnosticsProperty('chapterList', chapterList))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('dislikeCount', dislikeCount))
      ..add(DiagnosticsProperty('bookstatus', bookstatus));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book extends Book {
  factory _Book(
      {@HiveField(0) required final String id,
      @HiveField(1) required String title,
      @HiveField(2) required String description,
      @HiveField(3) required final Author author,
      @HiveField(4, defaultValue: null) String? bookCover,
      @HiveField(5) bool? isHot,
      @HiveField(6) required List<Genre> genres,
      @HiveField(7) required List<SubGenre> subGenres,
      @HiveField(8) required ChapterList? chapterList,
      @HiveField(9) int count,
      @HiveField(10) double rating,
      @HiveField(11) int likeCount,
      @HiveField(12) int dislikeCount,
      @HiveField(13, defaultValue: [])
      required final List<String> bookstatus}) = _$BookImpl;
  _Book._() : super._();

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @HiveField(1)
  set title(String value);
  @override
  @HiveField(2)
  String get description;
  @HiveField(2)
  set description(String value);
  @override
  @HiveField(3)
  Author get author;
  @override
  @HiveField(4, defaultValue: null)
  String? get bookCover;
  @HiveField(4, defaultValue: null)
  set bookCover(String? value);
  @override
  @HiveField(5)
  bool? get isHot;
  @HiveField(5)
  set isHot(bool? value);
  @override
  @HiveField(6)
  List<Genre> get genres;
  @HiveField(6)
  set genres(List<Genre> value);
  @override
  @HiveField(7)
  List<SubGenre> get subGenres;
  @HiveField(7)
  set subGenres(List<SubGenre> value);
  @override //  @HiveField(8)
// required List<Chapter> chapters,
  @HiveField(8)
  ChapterList? get chapterList; //  @HiveField(8)
// required List<Chapter> chapters,
  @HiveField(8)
  set chapterList(ChapterList? value);
  @override
  @HiveField(9)
  int get count;
  @HiveField(9)
  set count(int value);
  @override
  @HiveField(10)
  double get rating;
  @HiveField(10)
  set rating(double value);
  @override
  @HiveField(11)
  int get likeCount;
  @HiveField(11)
  set likeCount(int value);
  @override
  @HiveField(12)
  int get dislikeCount;
  @HiveField(12)
  set dislikeCount(int value);
  @override
  @HiveField(13, defaultValue: [])
  List<String> get bookstatus;
  @override
  @JsonKey(ignore: true)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String? get idToken => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get photoUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get jwtToken => throw _privateConstructorUsedError;
  @HiveField(5)
  Subscription? get subscription => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: [])
  List<BookProgress> get bookProgress => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: [])
  set bookProgress(List<BookProgress> value) =>
      throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: [])
  List<ReadHistory> get readHistory => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: [])
  set readHistory(List<ReadHistory> value) =>
      throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: [])
  List<FavouriteBooks> get favoriteBooks => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: [])
  set favoriteBooks(List<FavouriteBooks> value) =>
      throw _privateConstructorUsedError;
  @HiveField(9, defaultValue: [])
  List<UploadedBooks> get uplaodedbooks => throw _privateConstructorUsedError;
  @HiveField(9, defaultValue: [])
  set uplaodedbooks(List<UploadedBooks> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) String? idToken,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String? photoUrl,
      @HiveField(4) String? jwtToken,
      @HiveField(5) Subscription? subscription,
      @HiveField(6, defaultValue: []) List<BookProgress> bookProgress,
      @HiveField(7, defaultValue: []) List<ReadHistory> readHistory,
      @HiveField(8, defaultValue: []) List<FavouriteBooks> favoriteBooks,
      @HiveField(9, defaultValue: []) List<UploadedBooks> uplaodedbooks});

  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
    Object? name = null,
    Object? email = null,
    Object? photoUrl = freezed,
    Object? jwtToken = freezed,
    Object? subscription = freezed,
    Object? bookProgress = null,
    Object? readHistory = null,
    Object? favoriteBooks = null,
    Object? uplaodedbooks = null,
  }) {
    return _then(_value.copyWith(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      bookProgress: null == bookProgress
          ? _value.bookProgress
          : bookProgress // ignore: cast_nullable_to_non_nullable
              as List<BookProgress>,
      readHistory: null == readHistory
          ? _value.readHistory
          : readHistory // ignore: cast_nullable_to_non_nullable
              as List<ReadHistory>,
      favoriteBooks: null == favoriteBooks
          ? _value.favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<FavouriteBooks>,
      uplaodedbooks: null == uplaodedbooks
          ? _value.uplaodedbooks
          : uplaodedbooks // ignore: cast_nullable_to_non_nullable
              as List<UploadedBooks>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? idToken,
      @HiveField(1) String name,
      @HiveField(2) String email,
      @HiveField(3) String? photoUrl,
      @HiveField(4) String? jwtToken,
      @HiveField(5) Subscription? subscription,
      @HiveField(6, defaultValue: []) List<BookProgress> bookProgress,
      @HiveField(7, defaultValue: []) List<ReadHistory> readHistory,
      @HiveField(8, defaultValue: []) List<FavouriteBooks> favoriteBooks,
      @HiveField(9, defaultValue: []) List<UploadedBooks> uplaodedbooks});

  @override
  $SubscriptionCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = freezed,
    Object? name = null,
    Object? email = null,
    Object? photoUrl = freezed,
    Object? jwtToken = freezed,
    Object? subscription = freezed,
    Object? bookProgress = null,
    Object? readHistory = null,
    Object? favoriteBooks = null,
    Object? uplaodedbooks = null,
  }) {
    return _then(_$UserImpl(
      idToken: freezed == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription?,
      bookProgress: null == bookProgress
          ? _value.bookProgress
          : bookProgress // ignore: cast_nullable_to_non_nullable
              as List<BookProgress>,
      readHistory: null == readHistory
          ? _value.readHistory
          : readHistory // ignore: cast_nullable_to_non_nullable
              as List<ReadHistory>,
      favoriteBooks: null == favoriteBooks
          ? _value.favoriteBooks
          : favoriteBooks // ignore: cast_nullable_to_non_nullable
              as List<FavouriteBooks>,
      uplaodedbooks: null == uplaodedbooks
          ? _value.uplaodedbooks
          : uplaodedbooks // ignore: cast_nullable_to_non_nullable
              as List<UploadedBooks>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 35)
class _$UserImpl extends _User with DiagnosticableTreeMixin {
  _$UserImpl(
      {@HiveField(0) required this.idToken,
      @HiveField(1) required this.name,
      @HiveField(2) required this.email,
      @HiveField(3) this.photoUrl,
      @HiveField(4) this.jwtToken,
      @HiveField(5) this.subscription,
      @HiveField(6, defaultValue: []) this.bookProgress = const [],
      @HiveField(7, defaultValue: []) this.readHistory = const [],
      @HiveField(8, defaultValue: []) this.favoriteBooks = const [],
      @HiveField(9, defaultValue: []) this.uplaodedbooks = const []})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @HiveField(0)
  final String? idToken;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String email;
  @override
  @HiveField(3)
  final String? photoUrl;
  @override
  @HiveField(4)
  final String? jwtToken;
  @override
  @HiveField(5)
  final Subscription? subscription;
  @override
  @JsonKey()
  @HiveField(6, defaultValue: [])
  List<BookProgress> bookProgress;
  @override
  @JsonKey()
  @HiveField(7, defaultValue: [])
  List<ReadHistory> readHistory;
  @override
  @JsonKey()
  @HiveField(8, defaultValue: [])
  List<FavouriteBooks> favoriteBooks;
  @override
  @JsonKey()
  @HiveField(9, defaultValue: [])
  List<UploadedBooks> uplaodedbooks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(idToken: $idToken, name: $name, email: $email, photoUrl: $photoUrl, jwtToken: $jwtToken, subscription: $subscription, bookProgress: $bookProgress, readHistory: $readHistory, favoriteBooks: $favoriteBooks, uplaodedbooks: $uplaodedbooks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('idToken', idToken))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl))
      ..add(DiagnosticsProperty('jwtToken', jwtToken))
      ..add(DiagnosticsProperty('subscription', subscription))
      ..add(DiagnosticsProperty('bookProgress', bookProgress))
      ..add(DiagnosticsProperty('readHistory', readHistory))
      ..add(DiagnosticsProperty('favoriteBooks', favoriteBooks))
      ..add(DiagnosticsProperty('uplaodedbooks', uplaodedbooks));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
          {@HiveField(0) required final String? idToken,
          @HiveField(1) required final String name,
          @HiveField(2) required final String email,
          @HiveField(3) final String? photoUrl,
          @HiveField(4) final String? jwtToken,
          @HiveField(5) final Subscription? subscription,
          @HiveField(6, defaultValue: []) List<BookProgress> bookProgress,
          @HiveField(7, defaultValue: []) List<ReadHistory> readHistory,
          @HiveField(8, defaultValue: []) List<FavouriteBooks> favoriteBooks,
          @HiveField(9, defaultValue: []) List<UploadedBooks> uplaodedbooks}) =
      _$UserImpl;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  String? get idToken;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get email;
  @override
  @HiveField(3)
  String? get photoUrl;
  @override
  @HiveField(4)
  String? get jwtToken;
  @override
  @HiveField(5)
  Subscription? get subscription;
  @override
  @HiveField(6, defaultValue: [])
  List<BookProgress> get bookProgress;
  @HiveField(6, defaultValue: [])
  set bookProgress(List<BookProgress> value);
  @override
  @HiveField(7, defaultValue: [])
  List<ReadHistory> get readHistory;
  @HiveField(7, defaultValue: [])
  set readHistory(List<ReadHistory> value);
  @override
  @HiveField(8, defaultValue: [])
  List<FavouriteBooks> get favoriteBooks;
  @HiveField(8, defaultValue: [])
  set favoriteBooks(List<FavouriteBooks> value);
  @override
  @HiveField(9, defaultValue: [])
  List<UploadedBooks> get uplaodedbooks;
  @HiveField(9, defaultValue: [])
  set uplaodedbooks(List<UploadedBooks> value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get startDate => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime get endDate => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime startDate,
      @HiveField(2) DateTime endDate,
      @HiveField(3) bool isActive});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) DateTime startDate,
      @HiveField(2) DateTime endDate,
      @HiveField(3) bool isActive});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isActive = null,
  }) {
    return _then(_$SubscriptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 36)
class _$SubscriptionImpl extends _Subscription with DiagnosticableTreeMixin {
  _$SubscriptionImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.startDate,
      @HiveField(2) required this.endDate,
      @HiveField(3) required this.isActive})
      : super._();

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final DateTime startDate;
  @override
  @HiveField(2)
  final DateTime endDate;
  @override
  @HiveField(3)
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Subscription(id: $id, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Subscription'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription extends Subscription {
  factory _Subscription(
      {@HiveField(0) required final String id,
      @HiveField(1) required final DateTime startDate,
      @HiveField(2) required final DateTime endDate,
      @HiveField(3) required final bool isActive}) = _$SubscriptionImpl;
  _Subscription._() : super._();

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  DateTime get startDate;
  @override
  @HiveField(2)
  DateTime get endDate;
  @override
  @HiveField(3)
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookProgress _$BookProgressFromJson(Map<String, dynamic> json) {
  return _BookProgress.fromJson(json);
}

/// @nodoc
mixin _$BookProgress {
  @HiveField(0)
  String get bookId => throw _privateConstructorUsedError;
  @HiveField(1)
  int get currentChapter => throw _privateConstructorUsedError;
  @HiveField(1)
  set currentChapter(int value) => throw _privateConstructorUsedError;
  @HiveField(2)
  List<int> get completChapterList => throw _privateConstructorUsedError;
  @HiveField(2)
  set completChapterList(List<int> value) => throw _privateConstructorUsedError;
  @HiveField(3)
  int get totalChapters => throw _privateConstructorUsedError;
  @HiveField(3)
  set totalChapters(int value) => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime get lastReadTimestamp => throw _privateConstructorUsedError;
  @HiveField(4)
  set lastReadTimestamp(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookProgressCopyWith<BookProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookProgressCopyWith<$Res> {
  factory $BookProgressCopyWith(
          BookProgress value, $Res Function(BookProgress) then) =
      _$BookProgressCopyWithImpl<$Res, BookProgress>;
  @useResult
  $Res call(
      {@HiveField(0) String bookId,
      @HiveField(1) int currentChapter,
      @HiveField(2) List<int> completChapterList,
      @HiveField(3) int totalChapters,
      @HiveField(4) DateTime lastReadTimestamp});
}

/// @nodoc
class _$BookProgressCopyWithImpl<$Res, $Val extends BookProgress>
    implements $BookProgressCopyWith<$Res> {
  _$BookProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? currentChapter = null,
    Object? completChapterList = null,
    Object? totalChapters = null,
    Object? lastReadTimestamp = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
      completChapterList: null == completChapterList
          ? _value.completChapterList
          : completChapterList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      totalChapters: null == totalChapters
          ? _value.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadTimestamp: null == lastReadTimestamp
          ? _value.lastReadTimestamp
          : lastReadTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookProgressImplCopyWith<$Res>
    implements $BookProgressCopyWith<$Res> {
  factory _$$BookProgressImplCopyWith(
          _$BookProgressImpl value, $Res Function(_$BookProgressImpl) then) =
      __$$BookProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String bookId,
      @HiveField(1) int currentChapter,
      @HiveField(2) List<int> completChapterList,
      @HiveField(3) int totalChapters,
      @HiveField(4) DateTime lastReadTimestamp});
}

/// @nodoc
class __$$BookProgressImplCopyWithImpl<$Res>
    extends _$BookProgressCopyWithImpl<$Res, _$BookProgressImpl>
    implements _$$BookProgressImplCopyWith<$Res> {
  __$$BookProgressImplCopyWithImpl(
      _$BookProgressImpl _value, $Res Function(_$BookProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? currentChapter = null,
    Object? completChapterList = null,
    Object? totalChapters = null,
    Object? lastReadTimestamp = null,
  }) {
    return _then(_$BookProgressImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
      completChapterList: null == completChapterList
          ? _value.completChapterList
          : completChapterList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      totalChapters: null == totalChapters
          ? _value.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadTimestamp: null == lastReadTimestamp
          ? _value.lastReadTimestamp
          : lastReadTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 37)
class _$BookProgressImpl extends _BookProgress with DiagnosticableTreeMixin {
  _$BookProgressImpl(
      {@HiveField(0) required this.bookId,
      @HiveField(1) required this.currentChapter,
      @HiveField(2) required this.completChapterList,
      @HiveField(3) required this.totalChapters,
      @HiveField(4) required this.lastReadTimestamp})
      : super._();

  factory _$BookProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookProgressImplFromJson(json);

  @override
  @HiveField(0)
  final String bookId;
  @override
  @HiveField(1)
  int currentChapter;
  @override
  @HiveField(2)
  List<int> completChapterList;
  @override
  @HiveField(3)
  int totalChapters;
  @override
  @HiveField(4)
  DateTime lastReadTimestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookProgress(bookId: $bookId, currentChapter: $currentChapter, completChapterList: $completChapterList, totalChapters: $totalChapters, lastReadTimestamp: $lastReadTimestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookProgress'))
      ..add(DiagnosticsProperty('bookId', bookId))
      ..add(DiagnosticsProperty('currentChapter', currentChapter))
      ..add(DiagnosticsProperty('completChapterList', completChapterList))
      ..add(DiagnosticsProperty('totalChapters', totalChapters))
      ..add(DiagnosticsProperty('lastReadTimestamp', lastReadTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookProgressImplCopyWith<_$BookProgressImpl> get copyWith =>
      __$$BookProgressImplCopyWithImpl<_$BookProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookProgressImplToJson(
      this,
    );
  }
}

abstract class _BookProgress extends BookProgress {
  factory _BookProgress(
      {@HiveField(0) required final String bookId,
      @HiveField(1) required int currentChapter,
      @HiveField(2) required List<int> completChapterList,
      @HiveField(3) required int totalChapters,
      @HiveField(4) required DateTime lastReadTimestamp}) = _$BookProgressImpl;
  _BookProgress._() : super._();

  factory _BookProgress.fromJson(Map<String, dynamic> json) =
      _$BookProgressImpl.fromJson;

  @override
  @HiveField(0)
  String get bookId;
  @override
  @HiveField(1)
  int get currentChapter;
  @HiveField(1)
  set currentChapter(int value);
  @override
  @HiveField(2)
  List<int> get completChapterList;
  @HiveField(2)
  set completChapterList(List<int> value);
  @override
  @HiveField(3)
  int get totalChapters;
  @HiveField(3)
  set totalChapters(int value);
  @override
  @HiveField(4)
  DateTime get lastReadTimestamp;
  @HiveField(4)
  set lastReadTimestamp(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$BookProgressImplCopyWith<_$BookProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadHistory _$ReadHistoryFromJson(Map<String, dynamic> json) {
  return _ReadHistory.fromJson(json);
}

/// @nodoc
mixin _$ReadHistory {
  @HiveField(0)
  String get bookId => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get readAt => throw _privateConstructorUsedError;
  @HiveField(1)
  set readAt(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadHistoryCopyWith<ReadHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadHistoryCopyWith<$Res> {
  factory $ReadHistoryCopyWith(
          ReadHistory value, $Res Function(ReadHistory) then) =
      _$ReadHistoryCopyWithImpl<$Res, ReadHistory>;
  @useResult
  $Res call({@HiveField(0) String bookId, @HiveField(1) DateTime readAt});
}

/// @nodoc
class _$ReadHistoryCopyWithImpl<$Res, $Val extends ReadHistory>
    implements $ReadHistoryCopyWith<$Res> {
  _$ReadHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? readAt = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadHistoryImplCopyWith<$Res>
    implements $ReadHistoryCopyWith<$Res> {
  factory _$$ReadHistoryImplCopyWith(
          _$ReadHistoryImpl value, $Res Function(_$ReadHistoryImpl) then) =
      __$$ReadHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String bookId, @HiveField(1) DateTime readAt});
}

/// @nodoc
class __$$ReadHistoryImplCopyWithImpl<$Res>
    extends _$ReadHistoryCopyWithImpl<$Res, _$ReadHistoryImpl>
    implements _$$ReadHistoryImplCopyWith<$Res> {
  __$$ReadHistoryImplCopyWithImpl(
      _$ReadHistoryImpl _value, $Res Function(_$ReadHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? readAt = null,
  }) {
    return _then(_$ReadHistoryImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 38)
class _$ReadHistoryImpl extends _ReadHistory with DiagnosticableTreeMixin {
  _$ReadHistoryImpl(
      {@HiveField(0) required this.bookId, @HiveField(1) required this.readAt})
      : super._();

  factory _$ReadHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadHistoryImplFromJson(json);

  @override
  @HiveField(0)
  final String bookId;
  @override
  @HiveField(1)
  DateTime readAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReadHistory(bookId: $bookId, readAt: $readAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReadHistory'))
      ..add(DiagnosticsProperty('bookId', bookId))
      ..add(DiagnosticsProperty('readAt', readAt));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadHistoryImplCopyWith<_$ReadHistoryImpl> get copyWith =>
      __$$ReadHistoryImplCopyWithImpl<_$ReadHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadHistoryImplToJson(
      this,
    );
  }
}

abstract class _ReadHistory extends ReadHistory {
  factory _ReadHistory(
      {@HiveField(0) required final String bookId,
      @HiveField(1) required DateTime readAt}) = _$ReadHistoryImpl;
  _ReadHistory._() : super._();

  factory _ReadHistory.fromJson(Map<String, dynamic> json) =
      _$ReadHistoryImpl.fromJson;

  @override
  @HiveField(0)
  String get bookId;
  @override
  @HiveField(1)
  DateTime get readAt;
  @HiveField(1)
  set readAt(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$ReadHistoryImplCopyWith<_$ReadHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavouriteBooks _$FavouriteBooksFromJson(Map<String, dynamic> json) {
  return _FavouriteBooks.fromJson(json);
}

/// @nodoc
mixin _$FavouriteBooks {
  @HiveField(0)
  String get bookId => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get addedAt => throw _privateConstructorUsedError;
  @HiveField(1)
  set addedAt(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteBooksCopyWith<FavouriteBooks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteBooksCopyWith<$Res> {
  factory $FavouriteBooksCopyWith(
          FavouriteBooks value, $Res Function(FavouriteBooks) then) =
      _$FavouriteBooksCopyWithImpl<$Res, FavouriteBooks>;
  @useResult
  $Res call({@HiveField(0) String bookId, @HiveField(1) DateTime addedAt});
}

/// @nodoc
class _$FavouriteBooksCopyWithImpl<$Res, $Val extends FavouriteBooks>
    implements $FavouriteBooksCopyWith<$Res> {
  _$FavouriteBooksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? addedAt = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteBooksImplCopyWith<$Res>
    implements $FavouriteBooksCopyWith<$Res> {
  factory _$$FavouriteBooksImplCopyWith(_$FavouriteBooksImpl value,
          $Res Function(_$FavouriteBooksImpl) then) =
      __$$FavouriteBooksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String bookId, @HiveField(1) DateTime addedAt});
}

/// @nodoc
class __$$FavouriteBooksImplCopyWithImpl<$Res>
    extends _$FavouriteBooksCopyWithImpl<$Res, _$FavouriteBooksImpl>
    implements _$$FavouriteBooksImplCopyWith<$Res> {
  __$$FavouriteBooksImplCopyWithImpl(
      _$FavouriteBooksImpl _value, $Res Function(_$FavouriteBooksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? addedAt = null,
  }) {
    return _then(_$FavouriteBooksImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 39)
class _$FavouriteBooksImpl extends _FavouriteBooks
    with DiagnosticableTreeMixin {
  _$FavouriteBooksImpl(
      {@HiveField(0) required this.bookId, @HiveField(1) required this.addedAt})
      : super._();

  factory _$FavouriteBooksImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteBooksImplFromJson(json);

  @override
  @HiveField(0)
  final String bookId;
  @override
  @HiveField(1)
  DateTime addedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteBooks(bookId: $bookId, addedAt: $addedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteBooks'))
      ..add(DiagnosticsProperty('bookId', bookId))
      ..add(DiagnosticsProperty('addedAt', addedAt));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteBooksImplCopyWith<_$FavouriteBooksImpl> get copyWith =>
      __$$FavouriteBooksImplCopyWithImpl<_$FavouriteBooksImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteBooksImplToJson(
      this,
    );
  }
}

abstract class _FavouriteBooks extends FavouriteBooks {
  factory _FavouriteBooks(
      {@HiveField(0) required final String bookId,
      @HiveField(1) required DateTime addedAt}) = _$FavouriteBooksImpl;
  _FavouriteBooks._() : super._();

  factory _FavouriteBooks.fromJson(Map<String, dynamic> json) =
      _$FavouriteBooksImpl.fromJson;

  @override
  @HiveField(0)
  String get bookId;
  @override
  @HiveField(1)
  DateTime get addedAt;
  @HiveField(1)
  set addedAt(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$FavouriteBooksImplCopyWith<_$FavouriteBooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadedBooks _$UploadedBooksFromJson(Map<String, dynamic> json) {
  return _UploadedBooks.fromJson(json);
}

/// @nodoc
mixin _$UploadedBooks {
  @HiveField(0)
  String get bookId => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadedBooksCopyWith<UploadedBooks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadedBooksCopyWith<$Res> {
  factory $UploadedBooksCopyWith(
          UploadedBooks value, $Res Function(UploadedBooks) then) =
      _$UploadedBooksCopyWithImpl<$Res, UploadedBooks>;
  @useResult
  $Res call({@HiveField(0) String bookId, @HiveField(1) DateTime uploadedAt});
}

/// @nodoc
class _$UploadedBooksCopyWithImpl<$Res, $Val extends UploadedBooks>
    implements $UploadedBooksCopyWith<$Res> {
  _$UploadedBooksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadedBooksImplCopyWith<$Res>
    implements $UploadedBooksCopyWith<$Res> {
  factory _$$UploadedBooksImplCopyWith(
          _$UploadedBooksImpl value, $Res Function(_$UploadedBooksImpl) then) =
      __$$UploadedBooksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String bookId, @HiveField(1) DateTime uploadedAt});
}

/// @nodoc
class __$$UploadedBooksImplCopyWithImpl<$Res>
    extends _$UploadedBooksCopyWithImpl<$Res, _$UploadedBooksImpl>
    implements _$$UploadedBooksImplCopyWith<$Res> {
  __$$UploadedBooksImplCopyWithImpl(
      _$UploadedBooksImpl _value, $Res Function(_$UploadedBooksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? uploadedAt = null,
  }) {
    return _then(_$UploadedBooksImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 40)
class _$UploadedBooksImpl extends _UploadedBooks with DiagnosticableTreeMixin {
  _$UploadedBooksImpl(
      {@HiveField(0) required this.bookId,
      @HiveField(1) required this.uploadedAt})
      : super._();

  factory _$UploadedBooksImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadedBooksImplFromJson(json);

  @override
  @HiveField(0)
  final String bookId;
  @override
  @HiveField(1)
  final DateTime uploadedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadedBooks(bookId: $bookId, uploadedAt: $uploadedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadedBooks'))
      ..add(DiagnosticsProperty('bookId', bookId))
      ..add(DiagnosticsProperty('uploadedAt', uploadedAt));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadedBooksImplCopyWith<_$UploadedBooksImpl> get copyWith =>
      __$$UploadedBooksImplCopyWithImpl<_$UploadedBooksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadedBooksImplToJson(
      this,
    );
  }
}

abstract class _UploadedBooks extends UploadedBooks {
  factory _UploadedBooks(
      {@HiveField(0) required final String bookId,
      @HiveField(1) required final DateTime uploadedAt}) = _$UploadedBooksImpl;
  _UploadedBooks._() : super._();

  factory _UploadedBooks.fromJson(Map<String, dynamic> json) =
      _$UploadedBooksImpl.fromJson;

  @override
  @HiveField(0)
  String get bookId;
  @override
  @HiveField(1)
  DateTime get uploadedAt;
  @override
  @JsonKey(ignore: true)
  _$$UploadedBooksImplCopyWith<_$UploadedBooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reviews _$ReviewsFromJson(Map<String, dynamic> json) {
  return _Reviews.fromJson(json);
}

/// @nodoc
mixin _$Reviews {
  @HiveField(0)
  String get bookid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get userid => throw _privateConstructorUsedError;
  @HiveField(2)
  String get username => throw _privateConstructorUsedError;
  @HiveField(3)
  String get review => throw _privateConstructorUsedError;
  @HiveField(3)
  set review(String value) => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: 0)
  int get likeCount => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: 0)
  set likeCount(int value) => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: 0)
  int get dislikeCount => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: 0)
  set dislikeCount(int value) => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: [])
  List<SubReviews> get listSubreviews => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: [])
  set listSubreviews(List<SubReviews> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsCopyWith<Reviews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsCopyWith<$Res> {
  factory $ReviewsCopyWith(Reviews value, $Res Function(Reviews) then) =
      _$ReviewsCopyWithImpl<$Res, Reviews>;
  @useResult
  $Res call(
      {@HiveField(0) String bookid,
      @HiveField(1) String userid,
      @HiveField(2) String username,
      @HiveField(3) String review,
      @HiveField(4, defaultValue: 0) int likeCount,
      @HiveField(5, defaultValue: 0) int dislikeCount,
      @HiveField(7, defaultValue: []) List<SubReviews> listSubreviews});
}

/// @nodoc
class _$ReviewsCopyWithImpl<$Res, $Val extends Reviews>
    implements $ReviewsCopyWith<$Res> {
  _$ReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookid = null,
    Object? userid = null,
    Object? username = null,
    Object? review = null,
    Object? likeCount = null,
    Object? dislikeCount = null,
    Object? listSubreviews = null,
  }) {
    return _then(_value.copyWith(
      bookid: null == bookid
          ? _value.bookid
          : bookid // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      listSubreviews: null == listSubreviews
          ? _value.listSubreviews
          : listSubreviews // ignore: cast_nullable_to_non_nullable
              as List<SubReviews>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewsImplCopyWith<$Res> implements $ReviewsCopyWith<$Res> {
  factory _$$ReviewsImplCopyWith(
          _$ReviewsImpl value, $Res Function(_$ReviewsImpl) then) =
      __$$ReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String bookid,
      @HiveField(1) String userid,
      @HiveField(2) String username,
      @HiveField(3) String review,
      @HiveField(4, defaultValue: 0) int likeCount,
      @HiveField(5, defaultValue: 0) int dislikeCount,
      @HiveField(7, defaultValue: []) List<SubReviews> listSubreviews});
}

/// @nodoc
class __$$ReviewsImplCopyWithImpl<$Res>
    extends _$ReviewsCopyWithImpl<$Res, _$ReviewsImpl>
    implements _$$ReviewsImplCopyWith<$Res> {
  __$$ReviewsImplCopyWithImpl(
      _$ReviewsImpl _value, $Res Function(_$ReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookid = null,
    Object? userid = null,
    Object? username = null,
    Object? review = null,
    Object? likeCount = null,
    Object? dislikeCount = null,
    Object? listSubreviews = null,
  }) {
    return _then(_$ReviewsImpl(
      bookid: null == bookid
          ? _value.bookid
          : bookid // ignore: cast_nullable_to_non_nullable
              as String,
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
      listSubreviews: null == listSubreviews
          ? _value.listSubreviews
          : listSubreviews // ignore: cast_nullable_to_non_nullable
              as List<SubReviews>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 41)
class _$ReviewsImpl extends _Reviews with DiagnosticableTreeMixin {
  _$ReviewsImpl(
      {@HiveField(0) required this.bookid,
      @HiveField(1) required this.userid,
      @HiveField(2) required this.username,
      @HiveField(3) required this.review,
      @HiveField(4, defaultValue: 0) this.likeCount = 0,
      @HiveField(5, defaultValue: 0) this.dislikeCount = 0,
      @HiveField(7, defaultValue: []) this.listSubreviews = const []})
      : super._();

  factory _$ReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewsImplFromJson(json);

  @override
  @HiveField(0)
  final String bookid;
  @override
  @HiveField(1)
  final String userid;
  @override
  @HiveField(2)
  final String username;
  @override
  @HiveField(3)
  String review;
  @override
  @JsonKey()
  @HiveField(4, defaultValue: 0)
  int likeCount;
  @override
  @JsonKey()
  @HiveField(5, defaultValue: 0)
  int dislikeCount;
  @override
  @JsonKey()
  @HiveField(7, defaultValue: [])
  List<SubReviews> listSubreviews;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reviews(bookid: $bookid, userid: $userid, username: $username, review: $review, likeCount: $likeCount, dislikeCount: $dislikeCount, listSubreviews: $listSubreviews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reviews'))
      ..add(DiagnosticsProperty('bookid', bookid))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('review', review))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('dislikeCount', dislikeCount))
      ..add(DiagnosticsProperty('listSubreviews', listSubreviews));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsImplCopyWith<_$ReviewsImpl> get copyWith =>
      __$$ReviewsImplCopyWithImpl<_$ReviewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewsImplToJson(
      this,
    );
  }
}

abstract class _Reviews extends Reviews {
  factory _Reviews(
          {@HiveField(0) required final String bookid,
          @HiveField(1) required final String userid,
          @HiveField(2) required final String username,
          @HiveField(3) required String review,
          @HiveField(4, defaultValue: 0) int likeCount,
          @HiveField(5, defaultValue: 0) int dislikeCount,
          @HiveField(7, defaultValue: []) List<SubReviews> listSubreviews}) =
      _$ReviewsImpl;
  _Reviews._() : super._();

  factory _Reviews.fromJson(Map<String, dynamic> json) = _$ReviewsImpl.fromJson;

  @override
  @HiveField(0)
  String get bookid;
  @override
  @HiveField(1)
  String get userid;
  @override
  @HiveField(2)
  String get username;
  @override
  @HiveField(3)
  String get review;
  @HiveField(3)
  set review(String value);
  @override
  @HiveField(4, defaultValue: 0)
  int get likeCount;
  @HiveField(4, defaultValue: 0)
  set likeCount(int value);
  @override
  @HiveField(5, defaultValue: 0)
  int get dislikeCount;
  @HiveField(5, defaultValue: 0)
  set dislikeCount(int value);
  @override
  @HiveField(7, defaultValue: [])
  List<SubReviews> get listSubreviews;
  @HiveField(7, defaultValue: [])
  set listSubreviews(List<SubReviews> value);
  @override
  @JsonKey(ignore: true)
  _$$ReviewsImplCopyWith<_$ReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubReviews _$SubReviewsFromJson(Map<String, dynamic> json) {
  return _SubReviews.fromJson(json);
}

/// @nodoc
mixin _$SubReviews {
  @HiveField(0)
  String get userid => throw _privateConstructorUsedError;
  @HiveField(1)
  String get username => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get userReply => throw _privateConstructorUsedError;
  @HiveField(2)
  set userReply(String? value) => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: 0)
  int get likeCount => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: 0)
  set likeCount(int value) => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: 0)
  int get dislikeCount => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: 0)
  set dislikeCount(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubReviewsCopyWith<SubReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubReviewsCopyWith<$Res> {
  factory $SubReviewsCopyWith(
          SubReviews value, $Res Function(SubReviews) then) =
      _$SubReviewsCopyWithImpl<$Res, SubReviews>;
  @useResult
  $Res call(
      {@HiveField(0) String userid,
      @HiveField(1) String username,
      @HiveField(2) String? userReply,
      @HiveField(3, defaultValue: 0) int likeCount,
      @HiveField(4, defaultValue: 0) int dislikeCount});
}

/// @nodoc
class _$SubReviewsCopyWithImpl<$Res, $Val extends SubReviews>
    implements $SubReviewsCopyWith<$Res> {
  _$SubReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = null,
    Object? username = null,
    Object? userReply = freezed,
    Object? likeCount = null,
    Object? dislikeCount = null,
  }) {
    return _then(_value.copyWith(
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userReply: freezed == userReply
          ? _value.userReply
          : userReply // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubReviewsImplCopyWith<$Res>
    implements $SubReviewsCopyWith<$Res> {
  factory _$$SubReviewsImplCopyWith(
          _$SubReviewsImpl value, $Res Function(_$SubReviewsImpl) then) =
      __$$SubReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String userid,
      @HiveField(1) String username,
      @HiveField(2) String? userReply,
      @HiveField(3, defaultValue: 0) int likeCount,
      @HiveField(4, defaultValue: 0) int dislikeCount});
}

/// @nodoc
class __$$SubReviewsImplCopyWithImpl<$Res>
    extends _$SubReviewsCopyWithImpl<$Res, _$SubReviewsImpl>
    implements _$$SubReviewsImplCopyWith<$Res> {
  __$$SubReviewsImplCopyWithImpl(
      _$SubReviewsImpl _value, $Res Function(_$SubReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userid = null,
    Object? username = null,
    Object? userReply = freezed,
    Object? likeCount = null,
    Object? dislikeCount = null,
  }) {
    return _then(_$SubReviewsImpl(
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userReply: freezed == userReply
          ? _value.userReply
          : userReply // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 42)
class _$SubReviewsImpl extends _SubReviews with DiagnosticableTreeMixin {
  _$SubReviewsImpl(
      {@HiveField(0) required this.userid,
      @HiveField(1) required this.username,
      @HiveField(2) required this.userReply,
      @HiveField(3, defaultValue: 0) this.likeCount = 0,
      @HiveField(4, defaultValue: 0) this.dislikeCount = 0})
      : super._();

  factory _$SubReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubReviewsImplFromJson(json);

  @override
  @HiveField(0)
  final String userid;
  @override
  @HiveField(1)
  final String username;
  @override
  @HiveField(2)
  String? userReply;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: 0)
  int likeCount;
  @override
  @JsonKey()
  @HiveField(4, defaultValue: 0)
  int dislikeCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubReviews(userid: $userid, username: $username, userReply: $userReply, likeCount: $likeCount, dislikeCount: $dislikeCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubReviews'))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('userReply', userReply))
      ..add(DiagnosticsProperty('likeCount', likeCount))
      ..add(DiagnosticsProperty('dislikeCount', dislikeCount));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubReviewsImplCopyWith<_$SubReviewsImpl> get copyWith =>
      __$$SubReviewsImplCopyWithImpl<_$SubReviewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubReviewsImplToJson(
      this,
    );
  }
}

abstract class _SubReviews extends SubReviews {
  factory _SubReviews(
      {@HiveField(0) required final String userid,
      @HiveField(1) required final String username,
      @HiveField(2) required String? userReply,
      @HiveField(3, defaultValue: 0) int likeCount,
      @HiveField(4, defaultValue: 0) int dislikeCount}) = _$SubReviewsImpl;
  _SubReviews._() : super._();

  factory _SubReviews.fromJson(Map<String, dynamic> json) =
      _$SubReviewsImpl.fromJson;

  @override
  @HiveField(0)
  String get userid;
  @override
  @HiveField(1)
  String get username;
  @override
  @HiveField(2)
  String? get userReply;
  @HiveField(2)
  set userReply(String? value);
  @override
  @HiveField(3, defaultValue: 0)
  int get likeCount;
  @HiveField(3, defaultValue: 0)
  set likeCount(int value);
  @override
  @HiveField(4, defaultValue: 0)
  int get dislikeCount;
  @HiveField(4, defaultValue: 0)
  set dislikeCount(int value);
  @override
  @JsonKey(ignore: true)
  _$$SubReviewsImplCopyWith<_$SubReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookcontentObj _$BookcontentObjFromJson(Map<String, dynamic> json) {
  return _BookcontentObj.fromJson(json);
}

/// @nodoc
mixin _$BookcontentObj {
  @HiveField(0)
  int get index => throw _privateConstructorUsedError;
  @HiveField(1)
  ChapterList get chapterList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookcontentObjCopyWith<BookcontentObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookcontentObjCopyWith<$Res> {
  factory $BookcontentObjCopyWith(
          BookcontentObj value, $Res Function(BookcontentObj) then) =
      _$BookcontentObjCopyWithImpl<$Res, BookcontentObj>;
  @useResult
  $Res call({@HiveField(0) int index, @HiveField(1) ChapterList chapterList});

  $ChapterListCopyWith<$Res> get chapterList;
}

/// @nodoc
class _$BookcontentObjCopyWithImpl<$Res, $Val extends BookcontentObj>
    implements $BookcontentObjCopyWith<$Res> {
  _$BookcontentObjCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? chapterList = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      chapterList: null == chapterList
          ? _value.chapterList
          : chapterList // ignore: cast_nullable_to_non_nullable
              as ChapterList,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterListCopyWith<$Res> get chapterList {
    return $ChapterListCopyWith<$Res>(_value.chapterList, (value) {
      return _then(_value.copyWith(chapterList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookcontentObjImplCopyWith<$Res>
    implements $BookcontentObjCopyWith<$Res> {
  factory _$$BookcontentObjImplCopyWith(_$BookcontentObjImpl value,
          $Res Function(_$BookcontentObjImpl) then) =
      __$$BookcontentObjImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int index, @HiveField(1) ChapterList chapterList});

  @override
  $ChapterListCopyWith<$Res> get chapterList;
}

/// @nodoc
class __$$BookcontentObjImplCopyWithImpl<$Res>
    extends _$BookcontentObjCopyWithImpl<$Res, _$BookcontentObjImpl>
    implements _$$BookcontentObjImplCopyWith<$Res> {
  __$$BookcontentObjImplCopyWithImpl(
      _$BookcontentObjImpl _value, $Res Function(_$BookcontentObjImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? chapterList = null,
  }) {
    return _then(_$BookcontentObjImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      chapterList: null == chapterList
          ? _value.chapterList
          : chapterList // ignore: cast_nullable_to_non_nullable
              as ChapterList,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 43)
class _$BookcontentObjImpl extends _BookcontentObj
    with DiagnosticableTreeMixin {
  _$BookcontentObjImpl(
      {@HiveField(0) required this.index,
      @HiveField(1) required this.chapterList})
      : super._();

  factory _$BookcontentObjImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookcontentObjImplFromJson(json);

  @override
  @HiveField(0)
  final int index;
  @override
  @HiveField(1)
  final ChapterList chapterList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookcontentObj(index: $index, chapterList: $chapterList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookcontentObj'))
      ..add(DiagnosticsProperty('index', index))
      ..add(DiagnosticsProperty('chapterList', chapterList));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookcontentObjImplCopyWith<_$BookcontentObjImpl> get copyWith =>
      __$$BookcontentObjImplCopyWithImpl<_$BookcontentObjImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookcontentObjImplToJson(
      this,
    );
  }
}

abstract class _BookcontentObj extends BookcontentObj {
  factory _BookcontentObj(
          {@HiveField(0) required final int index,
          @HiveField(1) required final ChapterList chapterList}) =
      _$BookcontentObjImpl;
  _BookcontentObj._() : super._();

  factory _BookcontentObj.fromJson(Map<String, dynamic> json) =
      _$BookcontentObjImpl.fromJson;

  @override
  @HiveField(0)
  int get index;
  @override
  @HiveField(1)
  ChapterList get chapterList;
  @override
  @JsonKey(ignore: true)
  _$$BookcontentObjImplCopyWith<_$BookcontentObjImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
