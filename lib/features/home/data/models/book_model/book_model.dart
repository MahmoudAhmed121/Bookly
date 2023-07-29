import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';


import 'volume_info.dart';
part 'book_model.g.dart';
@HiveType(typeId: 0)
class BookModel extends Equatable {
  @HiveField(0)
  final String? kind;
  @HiveField(1)
  final String? id;
  @HiveField(2)
  final String? etag;
  @HiveField(3)
  final String? selfLink;
  @HiveField(4)
  final VolumeInfo volumeInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo:
            VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      );

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
   
    ];
  }
}
