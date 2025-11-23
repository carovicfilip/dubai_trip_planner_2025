class Place {
  final String id;
  final String categoryId;
  final String title;
  final String imageUrl;
  final String openingHours;
  final String description;
  final String? locationName;
  final double? rating;
  final String? reviewSummary;

  const Place({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.imageUrl,
    required this.openingHours,
    required this.description,
    this.locationName,
    this.rating,
    this.reviewSummary,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] as String,
      categoryId: json['categoryId'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      openingHours: json['openingHours'] as String,
      description: json['description'] as String,
      locationName: json['locationName'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      reviewSummary: json['reviewSummary'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryId': categoryId,
      'title': title,
      'imageUrl': imageUrl,
      'openingHours': openingHours,
      'description': description,
      'locationName': locationName,

      'rating': rating,
      'reviewSummary': reviewSummary,
    };
  }
}

