import 'package:cloud_firestore/cloud_firestore.dart';

class Course {
  final String name;
  final String imageUrl;
  final Map<String, dynamic> description;
  final String link;

  Course({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.link,
  });

  // Factory constructor to create a Course instance from Firestore data
  factory Course.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Course(
      // Replace 'fieldName' with actual field names from your Firestore document
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      imageUrl: 'image_url',
      link: 'link',
    );
  }

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as Map<String, dynamic>,
      link: json['link'] as String,
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'description': description,
      'link': link,
    };
  }
}
