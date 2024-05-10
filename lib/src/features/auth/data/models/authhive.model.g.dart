// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

part of 'authhive.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthHiveModelAdapter extends TypeAdapter<AuthHiveModel> {
  @override
  final int typeId = 0;

  @override
  AuthHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthHiveModel(
      email: fields[0] as String,
      idToken: fields[1] as String,
      name: fields[2] as String,
      photoUrl: fields[3] as String?,
      accesstoken: fields[4] as String,
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
  void write(BinaryWriter writer, AuthHiveModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.idToken)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.photoUrl)
      ..writeByte(4)
      ..write(obj.accesstoken)
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
      other is AuthHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubscriptionAdapter extends TypeAdapter<Subscription> {
  @override
  final int typeId = 1;

  @override
  Subscription read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Subscription(
      id: fields[0] as String,
      startDate: fields[1] as DateTime,
      endDate: fields[2] as DateTime,
      isActive: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Subscription obj) {
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
      other is SubscriptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BookProgressAdapter extends TypeAdapter<BookProgress> {
  @override
  final int typeId = 2;

  @override
  BookProgress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookProgress(
      bookId: fields[0] as String,
      currentChapter: fields[1] as int,
      totalChapters: fields[2] as int,
      lastReadTimestamp: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, BookProgress obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.currentChapter)
      ..writeByte(2)
      ..write(obj.totalChapters)
      ..writeByte(3)
      ..write(obj.lastReadTimestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookProgressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ReadHistoryAdapter extends TypeAdapter<ReadHistory> {
  @override
  final int typeId = 3;

  @override
  ReadHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReadHistory(
      bookId: fields[0] as String,
      readAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ReadHistory obj) {
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
      other is ReadHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FavouriteBooksAdapter extends TypeAdapter<FavouriteBooks> {
  @override
  final int typeId = 4;

  @override
  FavouriteBooks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouriteBooks(
      bookId: fields[0] as String,
      addedAt: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, FavouriteBooks obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(2)
      ..write(obj.addedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteBooksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class UploadedBooksAdapter extends TypeAdapter<UploadedBooks> {
  @override
  final int typeId = 5;

  @override
  UploadedBooks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UploadedBooks(
      bookId: fields[0] as String,
      uploadedAt: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, UploadedBooks obj) {
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
      other is UploadedBooksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
