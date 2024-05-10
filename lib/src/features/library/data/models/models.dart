import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class GetBookList {
  List<String> bookidList;
  GetBookList({
    required this.bookidList,
  });
  factory GetBookList.fromJson(Map<String, dynamic> json) =>
      _$GetBookListFromJson(json);
  Map<String, dynamic> toJson() => _$GetBookListToJson(this);
}
