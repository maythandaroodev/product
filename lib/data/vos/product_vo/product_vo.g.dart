// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVO _$ProductVOFromJson(Map<String, dynamic> json) => ProductVO(
      json['_id'] as String?,
      json['title'] as String?,
      json['price'] as int?,
      json['description'] as String?,
      json['createdAt'] as String?,
      json['UpdatedAt'] as String?,
      json['slug'] as String?,
      json['category'] == null
          ? null
          : CategoryVO.fromJson(json['category'] as Map<String, dynamic>),
      json['createdBy'] == null
          ? null
          : CreatedByVO.fromJson(json['createdBy'] as Map<String, dynamic>),
    )..image = json['image'] as String?;

Map<String, dynamic> _$ProductVOToJson(ProductVO instance) => <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'createdBy': instance.createdBy,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'slug': instance.slug,
      'image': instance.image,
    };
