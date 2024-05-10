// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

part of 'client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _LibrayClient implements LibrayClient {
  _LibrayClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://flutter-book-reader-backend-nest.onrender.com/v1/book';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Book>> getBooksmethod(
    GetBookList getBookList,
    String jwttoken, {
    int page = 1,
    int limit = 10,
    String json = 'application/json',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'limit': limit,
    };
    final _headers = <String, dynamic>{
      r'authorization': jwttoken,
      r'Content-Type': json,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(getBookList.toJson());
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<Book>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: json,
    )
            .compose(
              _dio.options,
              '/getBooks',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => Book.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
