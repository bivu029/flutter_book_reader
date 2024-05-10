// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:json_annotation/json_annotation.dart';

// part 'all.enitity.g.dart';

// @JsonSerializable()
// class Genre {
//   final String id;
//   final String name;
//   final String description;

//   Genre({
//     required this.id,
//     required this.name,
//     required this.description,
//   });
//   factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
//   Map<String, dynamic> toJson() => _$GenreToJson(this);
// }

// @JsonSerializable()
// class SubGenre {
//   final String id;
//   final String name;
//   final String description;

//   SubGenre({
//     required this.id,
//     required this.name,
//     required this.description,
//   });
//   factory SubGenre.fromJson(Map<String, dynamic> json) =>
//       _$SubGenreFromJson(json);
//   Map<String, dynamic> toJson() => _$SubGenreToJson(this);
// }

// @JsonSerializable()
// class Chapter {
//   final String id;
//   final String title;
//   final String content;
//   final bool isFree;

//   Chapter({
//     required this.id,
//     required this.title,
//     required this.content,
//     required this.isFree,
//   });
//   factory Chapter.fromJson(Map<String, dynamic> json) =>
//       _$ChapterFromJson(json);
//   Map<String, dynamic> toJson() => _$ChapterToJson(this);
// }

// @JsonSerializable()
// class ChapterList {
//   final String id;
//   final String bookId;
//   final List<Chapter> chapter;
//   ChapterList({
//     required this.id,
//     required this.bookId,
//     required this.chapter,
//   });
//   factory ChapterList.fromJson(Map<String, dynamic> json) =>
//       _$ChapterListFromJson(json);
//   Map<String, dynamic> toJson() => _$ChapterListToJson(this);
// }

// @JsonSerializable()
// class Book {
//   final String id;
//   final String title;
//   final String description;
//   final (String? id, String authorname) author;
//   final String? bookCover;
//   final bool? isHot;
//   final List<Genre> genres;
//   final List<SubGenre> subGenres;
//   final List<Chapter> chapters;
//   final ChapterList? chapterList;
//   final int? count;
//   final double? rating;
//   final int likeCount;
//   final int dislikeCount;
//   final List<Reviews> listReviews;

//   Book({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.author,
//     required this.bookCover,
//     this.isHot,
//     required this.genres,
//     required this.subGenres,
//     required this.chapters,
//     required this.chapterList,
//     this.count,
//     this.rating,
//     required this.likeCount,
//     required this.dislikeCount,
//     this.listReviews = const [],
//   });
//   factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
//   Map<String, dynamic> toJson() => _$BookToJson(this);
// }

// @JsonSerializable()
// class User {
//   final String? idToken;
//   final String name;
//   final String email;
//   final String? photoUrl;
//   final String? accesstoken;
//   final Subscription? subscription;
//   final List<BookProgress> bookProgress;
//   final List<ReadHistory> readHistory;
//   final List<FavouriteBooks> favoriteBooks;
//   final List<UploadedBooks> uplaodedbooks;

//   User({
//     required this.idToken,
//     required this.name,
//     required this.email,
//     this.photoUrl,
//     required this.accesstoken,
//     this.subscription,
//     this.bookProgress = const [],
//     this.readHistory = const [],
//     this.favoriteBooks = const [],
//     this.uplaodedbooks = const [],
//   });

//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
//   Map<String, dynamic> toJson() => _$UserToJson(this);
// }

// @JsonSerializable()
// class Subscription {
//   final String id;
//   final DateTime startDate;
//   final DateTime endDate;
//   final bool isActive;

//   Subscription({
//     required this.id,
//     required this.startDate,
//     required this.endDate,
//     required this.isActive,
//   });
//   factory Subscription.fromJson(Map<String, dynamic> json) =>
//       _$SubscriptionFromJson(json);
//   Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
// }

// @JsonSerializable()
// class BookProgress {
//   final String bookId;
//   final int currentChapter;
//   final int totalChapters;
//   final DateTime lastReadTimestamp;

//   BookProgress({
//     required this.bookId,
//     required this.currentChapter,
//     required this.totalChapters,
//     required this.lastReadTimestamp,
//   });
//   factory BookProgress.fromJson(Map<String, dynamic> json) =>
//       _$BookProgressFromJson(json);
//   Map<String, dynamic> toJson() => _$BookProgressToJson(this);
// }

// @JsonSerializable()
// class ReadHistory {
//   final String bookId;
//   final DateTime readAt;
//   ReadHistory({
//     required this.bookId,
//     required this.readAt,
//   });
//   factory ReadHistory.fromJson(Map<String, dynamic> json) =>
//       _$ReadHistoryFromJson(json);
//   Map<String, dynamic> toJson() => _$ReadHistoryToJson(this);
// }

// @JsonSerializable()
// class FavouriteBooks {
//   final String bookId;
//   final DateTime addedAt;
//   FavouriteBooks({
//     required this.bookId,
//     required this.addedAt,
//   });
//   factory FavouriteBooks.fromJson(Map<String, dynamic> json) =>
//       _$FavouriteBooksFromJson(json);
//   Map<String, dynamic> toJson() => _$FavouriteBooksToJson(this);
// }

// @JsonSerializable()
// class UploadedBooks {
//   final String bookId;
//   final DateTime uploadedAt;
//   UploadedBooks({
//     required this.bookId,
//     required this.uploadedAt,
//   });
//   factory UploadedBooks.fromJson(Map<String, dynamic> json) =>
//       _$UploadedBooksFromJson(json);
//   Map<String, dynamic> toJson() => _$UploadedBooksToJson(this);
// }

// @JsonSerializable()
// class Reviews {
//   final String bookid;
//   final String userid;
//   final String username;
//   final String review;
//   final int likeCount;
//   final int dislikeCount;
//   final List<SubReviews>? listSubreviews;
//   Reviews({
//     required this.bookid,
//     required this.userid,
//     required this.username,
//     required this.review,
//     this.likeCount = 0,
//     this.dislikeCount = 0,
//     this.listSubreviews,
//   });
//   factory Reviews.fromJson(Map<String, dynamic> json) =>
//       _$ReviewsFromJson(json);
//   Map<String, dynamic> toJson() => _$ReviewsToJson(this);
// }

// @JsonSerializable()
// class SubReviews {
//   final String userid;
//   final String username;
//   final String userReply;
//   final int likeCount;
//   final int dislikeCount;
//   SubReviews({
//     required this.userid,
//     required this.username,
//     required this.userReply,
//     this.likeCount = 0,
//     this.dislikeCount = 0,
//   });
//   factory SubReviews.fromJson(Map<String, dynamic> json) =>
//       _$SubReviewsFromJson(json);
//   Map<String, dynamic> toJson() => _$SubReviewsToJson(this);
// }

// // class Content {
// //   final RichText richText;
// //   Content({
// //     required this.richText,
// //   });

// // }

// // final txt= Content(richText:RichText(text: TextSpan()) );
// @JsonSerializable()
// class BookcontentObj {
//   final int index;
//   final ChapterList chapterList;

//   BookcontentObj({required this.index, required this.chapterList});
//   factory BookcontentObj.fromJson(Map<String, dynamic> json) =>
//       _$BookcontentObjFromJson(json);
//   Map<String, dynamic> toJson() => _$BookcontentObjToJson(this);
// }
