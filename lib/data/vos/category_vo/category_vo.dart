import 'package:json_annotation/json_annotation.dart';

part 'category_vo.g.dart';

@JsonSerializable()
class CategoryVO{
  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'slug')
  final String slug;

  CategoryVO(this.id, this.name, this.slug);

  factory CategoryVO.fromJson(Map<String,dynamic>json)=>_$CategoryVOFromJson(json);
}