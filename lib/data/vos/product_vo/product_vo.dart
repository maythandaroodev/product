import 'package:json_annotation/json_annotation.dart';
import 'package:product/data/vos/created_by_vo/created_by_vo.dart';

import '../category_vo/category_vo.dart';

part 'product_vo.g.dart';

@JsonSerializable()
class ProductVO{
  //Members
  @JsonKey(name: '_id')
  final String? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'price')
  final int? price;

  @JsonKey(name: 'category')
  final CategoryVO? category;

  @JsonKey(name: 'createdBy')
  final CreatedByVO? createdBy;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'createdAt')
  final String? createdAt;

  @JsonKey(name: 'UpdatedAt')
  final String? updatedAt;

  @JsonKey(name: 'slug')
  final String? slug;

  @JsonKey(name: 'image')
  String? image;


  //Constructor
ProductVO(this.id, this.title, this.price, this.description, this.createdAt, this.updatedAt, this.slug, this.category, this.createdBy);


  //factory constructor
factory ProductVO.fromJson(Map<String,dynamic> json)=>_$ProductVOFromJson(json);

  //Map
}