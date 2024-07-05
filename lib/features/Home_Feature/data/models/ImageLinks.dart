class ImageLinks {
  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  String? smallThumbnail;
  String? thumbnail;

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail ??
        'https://libreture.com/static/images/book-placeholder.png';
    map['thumbnail'] =
        thumbnail ?? 'https://libreture.com/static/images/book-placeholder.png';
    return map;
  }
}
