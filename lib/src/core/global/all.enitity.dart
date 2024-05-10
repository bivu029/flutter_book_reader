// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'all.enitity.freezed.dart';
part 'all.enitity.g.dart';

@unfreezed
abstract class Genre extends HiveObject with _$Genre {
  Genre._();
  @HiveType(
    typeId: 30,
  )
  factory Genre({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String description,
  }) = _Genre;
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@unfreezed
abstract class SubGenre extends HiveObject with _$SubGenre {
  SubGenre._();
  @HiveType(
    typeId: 31,
  )
  factory SubGenre({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String description,
  }) = _SubGenre;
  factory SubGenre.fromJson(Map<String, dynamic> json) =>
      _$SubGenreFromJson(json);
  // Map<String, dynamic> toJson() => _$SubGenreToJson(this);
}

@unfreezed
abstract class Chapter extends HiveObject with _$Chapter {
  Chapter._();
  @HiveType(
    typeId: 72,
  )
  factory Chapter({
    @HiveField(0) required final String id,
    @HiveField(1) required String title,
    @HiveField(2) required String content,
    @HiveField(3) required final bool isFree,
  }) = _Chapter;
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  // Map<String, dynamic> toJson() => _$ChapterToJson(this);
}

@unfreezed
abstract class ChapterList extends HiveObject with _$ChapterList {
  ChapterList._();
  @HiveType(
    typeId: 33,
  )
  factory ChapterList({
    @HiveField(1) required final String id,
    @HiveField(2) required final String bookId,
    @HiveField(3) required List<Chapter> chapter,
  }) = _ChapterList;
  factory ChapterList.fromJson(Map<String, dynamic> json) =>
      _$ChapterListFromJson(json);
  // Map<String, dynamic> toJson() => _$ChapterListToJson(this);
}

@freezed
abstract class Author extends HiveObject with _$Author {
  Author._();
  @HiveType(
    typeId: 63,
  )
  factory Author({
    @HiveField(1) String? id,
    @HiveField(2) required final String authorname,
  }) = _Author;
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@unfreezed
abstract class Book extends HiveObject with _$Book {
  Book._();
  @HiveType(
    typeId: 34,
  )
  factory Book({
    @HiveField(0) required final String id,
    @HiveField(1) required String title,
    @HiveField(2) required String description,
    @HiveField(3) required final Author author,
    @HiveField(4, defaultValue: null) String? bookCover,
    @HiveField(5) bool? isHot,
    @HiveField(6) required List<Genre> genres,
    @HiveField(7) required List<SubGenre> subGenres,
    //  @HiveField(8)
    // required List<Chapter> chapters,
    @HiveField(8) required ChapterList? chapterList,
    @HiveField(9) @Default(0) int count,
    @HiveField(10) @Default(0) double rating,
    @HiveField(11) @Default(0) int likeCount,
    @HiveField(12) @Default(0) int dislikeCount,
    @HiveField(13, defaultValue: []) required final List<String> bookstatus,
    // @Default([]) List<Reviews>? listReviews,
  }) = _Book;
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
  // Map<String, dynamic> toJson() => _$BookToJson(this);
}

//////////////user/////////////////////
@unfreezed
abstract class User extends HiveObject with _$User {
  User._();
  @HiveType(
    typeId: 35,
  )
  factory User({
    @HiveField(0) required final String? idToken,
    @HiveField(1) required final String name,
    @HiveField(2) required final String email,
    @HiveField(3) final String? photoUrl,
    @HiveField(4) final String? jwtToken,
    @HiveField(5) final Subscription? subscription,
    @HiveField(6, defaultValue: [])
    @Default([])
    List<BookProgress> bookProgress,
    @HiveField(7, defaultValue: []) @Default([]) List<ReadHistory> readHistory,
    @HiveField(8, defaultValue: [])
    @Default([])
    List<FavouriteBooks> favoriteBooks,
    @HiveField(9, defaultValue: [])
    @Default([])
    List<UploadedBooks> uplaodedbooks,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  // Map<String, dynamic> toJson() => _$UserToJson(this);
}

@unfreezed
abstract class Subscription extends HiveObject with _$Subscription {
  Subscription._();
  @HiveType(
    typeId: 36,
  )
  factory Subscription({
    @HiveField(0) required final String id,
    @HiveField(1) required final DateTime startDate,
    @HiveField(2) required final DateTime endDate,
    @HiveField(3) required final bool isActive,
  }) = _Subscription;
  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
  // Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}

@unfreezed
abstract class BookProgress extends HiveObject with _$BookProgress {
  BookProgress._();
  @HiveType(
    typeId: 37,
  )
  factory BookProgress({
    @HiveField(0) required final String bookId,
    @HiveField(1) required int currentChapter,
      @HiveField(2) required List<int>  completChapterList,
    @HiveField(3) required int totalChapters,
    @HiveField(4) required DateTime lastReadTimestamp,

  }) = _BookProgress;
  factory BookProgress.fromJson(Map<String, dynamic> json) =>
      _$BookProgressFromJson(json);
  // Map<String, dynamic> toJson() => _$BookProgressToJson(this);
}

@unfreezed
abstract class ReadHistory extends HiveObject with _$ReadHistory {
  ReadHistory._();
  @HiveType(
    typeId: 38,
  )
  factory ReadHistory({
    @HiveField(0) required final String bookId,
    @HiveField(1) required DateTime readAt,
  }) = _ReadHistory;
  factory ReadHistory.fromJson(Map<String, dynamic> json) =>
      _$ReadHistoryFromJson(json);
  // Map<String, dynamic> toJson() => _$ReadHistoryToJson(this);
}

@unfreezed
abstract class FavouriteBooks with _$FavouriteBooks {
  FavouriteBooks._();
  @HiveType(
    typeId: 39,
  )
  factory FavouriteBooks({
    @HiveField(0) required final String bookId,
    @HiveField(1) required DateTime addedAt,
  }) = _FavouriteBooks;
  factory FavouriteBooks.fromJson(Map<String, dynamic> json) =>
      _$FavouriteBooksFromJson(json);
  // Map<String, dynamic> toJson() => _$FavouriteBooksToJson(this);
}

@unfreezed
abstract class UploadedBooks extends HiveObject with _$UploadedBooks {
  UploadedBooks._();
  @HiveType(
    typeId: 40,
  )
  factory UploadedBooks({
    @HiveField(0) required final String bookId,
    @HiveField(1) required final DateTime uploadedAt,
  }) = _UploadedBooks;
  factory UploadedBooks.fromJson(Map<String, dynamic> json) =>
      _$UploadedBooksFromJson(json);
  // Map<String, dynamic> toJson() => _$UploadedBooksToJson(this);
}

@unfreezed
abstract class Reviews extends HiveObject with _$Reviews {
  Reviews._();
  @HiveType(
    typeId: 41,
  )
  factory Reviews({
    @HiveField(0) required final String bookid,
    @HiveField(1) required final String userid,
    @HiveField(2) required final String username,
    @HiveField(3) required String review,
    @HiveField(4, defaultValue: 0) @Default(0) int likeCount,
    @HiveField(5, defaultValue: 0) @Default(0) int dislikeCount,
    @HiveField(7, defaultValue: [])
    @Default([])
    List<SubReviews> listSubreviews,
  }) = _Reviews;
  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);
  // Map<String, dynamic> toJson() => _$ReviewsToJson(this);
}

@unfreezed
abstract class SubReviews extends HiveObject with _$SubReviews {
  SubReviews._();
  @HiveType(
    typeId: 42,
  )
  factory SubReviews({
    @HiveField(0) required final String userid,
    @HiveField(1) required final String username,
    @HiveField(2) required String? userReply,
    @HiveField(3, defaultValue: 0)
    @Default(
      0,
    )
    int likeCount,
    @HiveField(4, defaultValue: 0) @Default(0) int dislikeCount,
  }) = _SubReviews;
  factory SubReviews.fromJson(Map<String, dynamic> json) =>
      _$SubReviewsFromJson(json);
  // Map<String, dynamic> toJson() => _$SubReviewsToJson(this);
}

// // class Content {
// //   final RichText richText;
// //   Content({
// //     required richText,
// //   });

// // }

// final txt= Content(richText:RichText(text: TextSpan()) );
@unfreezed
abstract class BookcontentObj extends HiveObject with _$BookcontentObj {
  BookcontentObj._();
  @HiveType(
    typeId: 43,
  )
  factory BookcontentObj(
      {@HiveField(0) required final int index,
      @HiveField(1) required final ChapterList chapterList}) = _BookcontentObj;
  factory BookcontentObj.fromJson(Map<String, dynamic> json) =>
      _$BookcontentObjFromJson(json);
  // Map<String, dynamic> toJson() => _$BookcontentObjToJson(this);
}
