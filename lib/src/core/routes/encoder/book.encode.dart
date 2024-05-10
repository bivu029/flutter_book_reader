import 'dart:convert';

import 'package:bookbazar/src/core/global/all.enitity.dart';

// Import the Book and BookcontentObj classes here

/// A codec that can serialize both [Book] and [BookcontentObj].
class BookExtraCodec extends Codec<Object?, Object?> {
  /// Create a codec.
  const BookExtraCodec();

  @override
  Converter<Object?, Object?> get decoder => const _MyExtraDecoder();

  @override
  Converter<Object?, Object?> get encoder => const _MyExtraEncoder();
}

class _MyExtraDecoder extends Converter<Object?, Object?> {
  const _MyExtraDecoder();

  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }

    final List<Object?> inputAsList = input as List<Object?>;

    if (inputAsList[0] == 'Book') {
      return Book.fromJson(jsonDecode(inputAsList[1] as String));
    }

    if (inputAsList[0] == 'BookcontentObj') {
      return BookcontentObj.fromJson(jsonDecode(inputAsList[1] as String));
    }

    throw FormatException('Unable to parse input: $input');
  }
}

class _MyExtraEncoder extends Converter<Object?, Object?> {
  const _MyExtraEncoder();

  @override
  Object? convert(Object? input) {
    if (input == null) {
      return null;
    }

    if (input is Book) {
      return <Object?>['Book', jsonEncode(input.toJson())];
    } else if (input is BookcontentObj) {
      return <Object?>['BookcontentObj', jsonEncode(input.toJson())];
    } else {
      throw FormatException('Cannot encode type ${input.runtimeType}');
    }
  }
}
