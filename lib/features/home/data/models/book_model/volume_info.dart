import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'image_links.dart';
part 'volume_info.g.dart';

@HiveType(typeId: 1)
class VolumeInfo extends Equatable {
  @HiveField(0)
  final String? title;
  @HiveField(1)
  final List<String>? authors;
  @HiveField(2)
  final List<String>? categories;
  @HiveField(3)
  final num? averageRating;
  @HiveField(4)
  final int? ratingsCount;
  @HiveField(5)
  final ImageLinks? imageLinks;
  const VolumeInfo({
    this.title,
    this.authors,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    required this.imageLinks,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
        title: json['title'] as String?,
        authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
        categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
        averageRating: json['averageRating'],
        ratingsCount: json['ratingsCount'] as int?,
        imageLinks: json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      );

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      categories,
      averageRating,
      ratingsCount,
      imageLinks,
    ];
  }
}
