//class gallery
class Gallery {
  String id;
  String description;
  ImageUrl imageUrl;

  Gallery({this.id, this.description, this.imageUrl});

  factory Gallery.fromJson(Map<String, dynamic> galleryJson) {
    return Gallery(
      id: galleryJson[''],
      description: galleryJson[''],
      imageUrl: ImageUrl.fromJson(galleryJson['url']),
    );
  }
}


class ImageUrl {
  String raw;
  String small;
  String regular;
  String full;
  String thumb;

  ImageUrl({this.raw, this.small, this.regular, this.full, this.thumb});

  factory ImageUrl.fromJson(Map<String, dynamic> urlJson) {
    return ImageUrl(
      raw: urlJson['raw'],
      small: urlJson['small'],
      regular: urlJson['regular'],
      full: urlJson['full'],
      thumb: urlJson['thumb'],
    );
  }
}

