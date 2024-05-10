// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

part of 'all.enitity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenreImplAdapter extends TypeAdapter<_$GenreImpl> {
  @override
  final int typeId = 30;

  @override
  _$GenreImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$GenreImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$GenreImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenreImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubGenreImplAdapter extends TypeAdapter<_$SubGenreImpl> {
  @override
  final int typeId = 31;

  @override
  _$SubGenreImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubGenreImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubGenreImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubGenreImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChapterImplAdapter extends TypeAdapter<_$ChapterImpl> {
  @override
  final int typeId = 72;

  @override
  _$ChapterImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ChapterImpl(
      id: fields[0] as String,
      title: fields[1] as String,
      content: fields[2] as String,
      isFree: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$ChapterImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.content)
      ..writeByte(3)
      ..write(obj.isFree);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChapterListImplAdapter extends TypeAdapter<_$ChapterListImpl> {
  @override
  final int typeId = 33;

  @override
  _$ChapterListImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ChapterListImpl(
      id: fields[1] as String,
      bookId: fields[2] as String,
      chapter: (fields[3] as List).cast<Chapter>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ChapterListImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.bookId)
      ..writeByte(3)
      ..write(obj.chapter);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChapterListImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthorImplAdapter extends TypeAdapter<_$AuthorImpl> {
  @override
  final int typeId = 63;

  @override
  _$AuthorImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AuthorImpl(
      id: fields[1] as String?,
      authorname: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$AuthorImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.authorname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BookImplAdapter extends TypeAdapter<_$BookImpl> {
  @override
  final int typeId = 34;

  @override
  _$BookImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BookImpl(
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String,
      author: fields[3] as Author,
      bookCover: fields[4] as String?,
      isHot: fields[5] as bool?,
      genres: (fields[6] as List).cast<Genre>(),
      subGenres: (fields[7] as List).cast<SubGenre>(),
      chapterList: fields[8] as ChapterList?,
      count: fields[9] as int,
      rating: fields[10] as double,
      likeCount: fields[11] as int,
      dislikeCount: fields[12] as int,
      bookstatus: fields[13] == null ? [] : (fields[13] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$BookImpl obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.author)
      ..writeByte(4)
      ..write(obj.bookCover)
      ..writeByte(5)
      ..write(obj.isHot)
      ..writeByte(6)
      ..write(obj.genres)
      ..writeByte(7)
      ..write(obj.subGenres)
      ..writeByte(8)
      ..write(obj.chapterList)
      ..writeByte(9)
      ..write(obj.count)
      ..writeByte(10)
      ..write(obj.rating)
      ..writeByte(11)
      ..write(obj.likeCount)
      ..writeByte(12)
      ..write(obj.dislikeCount)
      ..writeByte(13)
      ..write(obj.bookstatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UserImplAdapter extends TypeAdapter<_$UserImpl> {
  @override
  final int typeId = 35;

  @override
  _$UserImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserImpl(
      idToken: fields[0] as String?,
      name: fields[1] as String,
      email: fields[2] as String,
      photoUrl: fields[3] as String?,
      jwtToken: fields[4] as String?,
      subscription: fields[5] as Subscription?,
      bookProgress:
          fields[6] == null ? [] : (fields[6] as List).cast<BookProgress>(),
      readHistory:
          fields[7] == null ? [] : (fields[7] as List).cast<ReadHistory>(),
      favoriteBooks:
          fields[8] == null ? [] : (fields[8] as List).cast<FavouriteBooks>(),
      uplaodedbooks:
          fields[9] == null ? [] : (fields[9] as List).cast<UploadedBooks>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$UserImpl obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.idToken)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.photoUrl)
      ..writeByte(4)
      ..write(obj.jwtToken)
      ..writeByte(5)
      ..write(obj.subscription)
      ..writeByte(6)
      ..write(obj.bookProgress)
      ..writeByte(7)
      ..write(obj.readHistory)
      ..writeByte(8)
      ..write(obj.favoriteBooks)
      ..writeByte(9)
      ..write(obj.uplaodedbooks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubscriptionImplAdapter extends TypeAdapter<_$SubscriptionImpl> {
  @override
  final int typeId = 36;

  @override
  _$SubscriptionImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubscriptionImpl(
      id: fields[0] as String,
      startDate: fields[1] as DateTime,
      endDate: fields[2] as DateTime,
      isActive: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubscriptionImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startDate)
      ..writeByte(2)
      ..write(obj.endDate)
      ..writeByte(3)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubscriptionImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BookProgressImplAdapter extends TypeAdapter<_$BookProgressImpl> {
  @override
  final int typeId = 37;

  @override
  _$BookProgressImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BookProgressImpl(
      bookId: fields[0] as String,
      currentChapter: fields[1] as int,
      completChapterList: (fields[2] as List).cast<int>(),
      totalChapters: fields[3] as int,
      lastReadTimestamp: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$BookProgressImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.currentChapter)
      ..writeByte(2)
      ..write(obj.completChapterList)
      ..writeByte(3)
      ..write(obj.totalChapters)
      ..writeByte(4)
      ..write(obj.lastReadTimestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookProgressImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReadHistoryImplAdapter extends TypeAdapter<_$ReadHistoryImpl> {
  @override
  final int typeId = 38;

  @override
  _$ReadHistoryImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ReadHistoryImpl(
      bookId: fields[0] as String,
      readAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$ReadHistoryImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.readAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReadHistoryImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FavouriteBooksImplAdapter extends TypeAdapter<_$FavouriteBooksImpl> {
  @override
  final int typeId = 39;

  @override
  _$FavouriteBooksImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$FavouriteBooksImpl(
      bookId: fields[0] as String,
      addedAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$FavouriteBooksImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.addedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteBooksImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UploadedBooksImplAdapter extends TypeAdapter<_$UploadedBooksImpl> {
  @override
  final int typeId = 40;

  @override
  _$UploadedBooksImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UploadedBooksImpl(
      bookId: fields[0] as String,
      uploadedAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$UploadedBooksImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.uploadedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UploadedBooksImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReviewsImplAdapter extends TypeAdapter<_$ReviewsImpl> {
  @override
  final int typeId = 41;

  @override
  _$ReviewsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ReviewsImpl(
      bookid: fields[0] as String,
      userid: fields[1] as String,
      username: fields[2] as String,
      review: fields[3] as String,
      likeCount: fields[4] == null ? 0 : fields[4] as int,
      dislikeCount: fields[5] == null ? 0 : fields[5] as int,
      listSubreviews:
          fields[7] == null ? [] : (fields[7] as List).cast<SubReviews>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ReviewsImpl obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.bookid)
      ..writeByte(1)
      ..write(obj.userid)
      ..writeByte(2)
      ..write(obj.username)
      ..writeByte(3)
      ..write(obj.review)
      ..writeByte(4)
      ..write(obj.likeCount)
      ..writeByte(5)
      ..write(obj.dislikeCount)
      ..writeByte(7)
      ..write(obj.listSubreviews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewsImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubReviewsImplAdapter extends TypeAdapter<_$SubReviewsImpl> {
  @override
  final int typeId = 42;

  @override
  _$SubReviewsImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$SubReviewsImpl(
      userid: fields[0] as String,
      username: fields[1] as String,
      userReply: fields[2] as String?,
      likeCount: fields[3] == null ? 0 : fields[3] as int,
      dislikeCount: fields[4] == null ? 0 : fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$SubReviewsImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.userid)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.userReply)
      ..writeByte(3)
      ..write(obj.likeCount)
      ..writeByte(4)
      ..write(obj.dislikeCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubReviewsImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BookcontentObjImplAdapter extends TypeAdapter<_$BookcontentObjImpl> {
  @override
  final int typeId = 43;

  @override
  _$BookcontentObjImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$BookcontentObjImpl(
      index: fields[0] as int,
      chapterList: fields[1] as ChapterList,
    );
  }

  @override
  void write(BinaryWriter writer, _$BookcontentObjImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.index)
      ..writeByte(1)
      ..write(obj.chapterList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookcontentObjImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$SubGenreImpl _$$SubGenreImplFromJson(Map<String, dynamic> json) =>
    _$SubGenreImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$SubGenreImplToJson(_$SubGenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      isFree: json['isFree'] as bool,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'isFree': instance.isFree,
    };

_$ChapterListImpl _$$ChapterListImplFromJson(Map<String, dynamic> json) =>
    _$ChapterListImpl(
      id: json['id'] as String,
      bookId: json['bookId'] as String,
      chapter: (json['chapter'] as List<dynamic>)
          .map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChapterListImplToJson(_$ChapterListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookId': instance.bookId,
      'chapter': instance.chapter,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
      id: json['id'] as String?,
      authorname: json['authorname'] as String,
    );

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorname': instance.authorname,
    };

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      bookCover: json['bookCover'] as String?,
      isHot: json['isHot'] as bool?,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      subGenres: (json['subGenres'] as List<dynamic>)
          .map((e) => SubGenre.fromJson(e as Map<String, dynamic>))
          .toList(),
      chapterList: json['chapterList'] == null
          ? null
          : ChapterList.fromJson(json['chapterList'] as Map<String, dynamic>),
      count: (json['count'] as num?)?.toInt() ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      dislikeCount: (json['dislikeCount'] as num?)?.toInt() ?? 0,
      bookstatus: (json['bookstatus'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'bookCover': instance.bookCover,
      'isHot': instance.isHot,
      'genres': instance.genres,
      'subGenres': instance.subGenres,
      'chapterList': instance.chapterList,
      'count': instance.count,
      'rating': instance.rating,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'bookstatus': instance.bookstatus,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      idToken: json['idToken'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      photoUrl: json['photoUrl'] as String?,
      jwtToken: json['jwtToken'] as String?,
      subscription: json['subscription'] == null
          ? null
          : Subscription.fromJson(json['subscription'] as Map<String, dynamic>),
      bookProgress: (json['bookProgress'] as List<dynamic>?)
              ?.map((e) => BookProgress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      readHistory: (json['readHistory'] as List<dynamic>?)
              ?.map((e) => ReadHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      favoriteBooks: (json['favoriteBooks'] as List<dynamic>?)
              ?.map((e) => FavouriteBooks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uplaodedbooks: (json['uplaodedbooks'] as List<dynamic>?)
              ?.map((e) => UploadedBooks.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'jwtToken': instance.jwtToken,
      'subscription': instance.subscription,
      'bookProgress': instance.bookProgress,
      'readHistory': instance.readHistory,
      'favoriteBooks': instance.favoriteBooks,
      'uplaodedbooks': instance.uplaodedbooks,
    };

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['id'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'isActive': instance.isActive,
    };

_$BookProgressImpl _$$BookProgressImplFromJson(Map<String, dynamic> json) =>
    _$BookProgressImpl(
      bookId: json['bookId'] as String,
      currentChapter: (json['currentChapter'] as num).toInt(),
      completChapterList: (json['completChapterList'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      totalChapters: (json['totalChapters'] as num).toInt(),
      lastReadTimestamp: DateTime.parse(json['lastReadTimestamp'] as String),
    );

Map<String, dynamic> _$$BookProgressImplToJson(_$BookProgressImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'currentChapter': instance.currentChapter,
      'completChapterList': instance.completChapterList,
      'totalChapters': instance.totalChapters,
      'lastReadTimestamp': instance.lastReadTimestamp.toIso8601String(),
    };

_$ReadHistoryImpl _$$ReadHistoryImplFromJson(Map<String, dynamic> json) =>
    _$ReadHistoryImpl(
      bookId: json['bookId'] as String,
      readAt: DateTime.parse(json['readAt'] as String),
    );

Map<String, dynamic> _$$ReadHistoryImplToJson(_$ReadHistoryImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'readAt': instance.readAt.toIso8601String(),
    };

_$FavouriteBooksImpl _$$FavouriteBooksImplFromJson(Map<String, dynamic> json) =>
    _$FavouriteBooksImpl(
      bookId: json['bookId'] as String,
      addedAt: DateTime.parse(json['addedAt'] as String),
    );

Map<String, dynamic> _$$FavouriteBooksImplToJson(
        _$FavouriteBooksImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'addedAt': instance.addedAt.toIso8601String(),
    };

_$UploadedBooksImpl _$$UploadedBooksImplFromJson(Map<String, dynamic> json) =>
    _$UploadedBooksImpl(
      bookId: json['bookId'] as String,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$UploadedBooksImplToJson(_$UploadedBooksImpl instance) =>
    <String, dynamic>{
      'bookId': instance.bookId,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
    };

_$ReviewsImpl _$$ReviewsImplFromJson(Map<String, dynamic> json) =>
    _$ReviewsImpl(
      bookid: json['bookid'] as String,
      userid: json['userid'] as String,
      username: json['username'] as String,
      review: json['review'] as String,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      dislikeCount: (json['dislikeCount'] as num?)?.toInt() ?? 0,
      listSubreviews: (json['listSubreviews'] as List<dynamic>?)
              ?.map((e) => SubReviews.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ReviewsImplToJson(_$ReviewsImpl instance) =>
    <String, dynamic>{
      'bookid': instance.bookid,
      'userid': instance.userid,
      'username': instance.username,
      'review': instance.review,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'listSubreviews': instance.listSubreviews,
    };

_$SubReviewsImpl _$$SubReviewsImplFromJson(Map<String, dynamic> json) =>
    _$SubReviewsImpl(
      userid: json['userid'] as String,
      username: json['username'] as String,
      userReply: json['userReply'] as String?,
      likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
      dislikeCount: (json['dislikeCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SubReviewsImplToJson(_$SubReviewsImpl instance) =>
    <String, dynamic>{
      'userid': instance.userid,
      'username': instance.username,
      'userReply': instance.userReply,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
    };

_$BookcontentObjImpl _$$BookcontentObjImplFromJson(Map<String, dynamic> json) =>
    _$BookcontentObjImpl(
      index: (json['index'] as num).toInt(),
      chapterList:
          ChapterList.fromJson(json['chapterList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookcontentObjImplToJson(
        _$BookcontentObjImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'chapterList': instance.chapterList,
    };
