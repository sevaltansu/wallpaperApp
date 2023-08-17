class WallpaperModel {
  String photographer;
  String photographer_url;
  int? photographer_id;
  SrcModel? src;

  WallpaperModel(
      {this.src,
      this.photographer_url = '',
      this.photographer = '',
      this.photographer_id});
  factory WallpaperModel.fromJson(Map<String, dynamic> jsonData) {
    return WallpaperModel(
      src: SrcModel.fromJson(jsonData["src"]),
      photographer_url: jsonData["photographer_url"],
      photographer_id: jsonData["photographer_id"],
      photographer: jsonData["photographer"],
    );
  }
}

class SrcModel {
  String original;
  String small;
  String portrait;
  SrcModel({required this.original, this.portrait = '', required this.small});
  factory SrcModel.fromJson(Map<String, dynamic> jsonData) {
    return SrcModel(
        portrait: jsonData["portrait"],
        original: jsonData["original"],
        small: jsonData["small"]);
  }
}
