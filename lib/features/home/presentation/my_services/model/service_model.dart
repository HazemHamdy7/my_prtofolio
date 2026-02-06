class ServiceModel {
  final Map<String, String> title;
  final Map<String, String> description;
  final String images;
  final String url;

  ServiceModel({
    required this.title,
    required this.description,
    required this.images,
    required this.url,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: Map<String, String>.from(json['title'] as Map),
      description: Map<String, String>.from(json['description'] as Map),
      images: json['imageUrl'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'imageUrl': images,
      'url': url,
    };
  }
}
