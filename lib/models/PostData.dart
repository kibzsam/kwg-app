import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'PostData.g.dart';

@JsonSerializable()
class PostData extends Equatable {
  @JsonKey(includeIfNull: false)
  final int id;
  @JsonKey(includeIfNull: false)
  final int postId;
  @JsonKey(includeIfNull: false)
  final String name;
  @JsonKey(includeIfNull: false)
  final String email;
  @JsonKey(includeIfNull: false)
  final String body;
  @JsonKey(includeIfNull: false)
  const PostData(
    this.id,
    this.postId,
    this.name,
    this.email,
    this.body,
  );

  @override
  List<Object> get props => [
        id,
        postId,
        name,
        email,
        body,
      ];

  factory PostData.fromJson(Map<String, dynamic> json) => _$PostDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostDataToJson(this);
}
