import 'package:json_annotation/json_annotation.dart';

part 'created_by_vo.g.dart';

@JsonSerializable()
class CreatedByVO{
  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: '_id')
  final String id;

  @JsonKey(name: 'name')
  final String name;

  CreatedByVO(this.role, this.id, this.name);

  factory CreatedByVO.fromJson(Map<String,dynamic>json)=>_$CreatedByVOFromJson(json);

}