class Place {
  final String id;
  final String categoryId;
  final String title;
  final String imageUrl;
  final String openingHours;
  final String description;
  final String? locationName;
  final double? latitude;
  final double? longitude;
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
    this.latitude,
    this.longitude,
    this.rating,
    this.reviewSummary,
  });
}

