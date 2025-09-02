import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String thumbnail;

  const ImageLinks({required this.smallThumbnail, required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
    smallThumbnail: json['smallThumbnail'] as String?,
    thumbnail: json['thumbnail'] ,
  );

  Map<String, dynamic> toJson() => {
    'smallThumbnail': smallThumbnail,
    'thumbnail': thumbnail,
  };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
