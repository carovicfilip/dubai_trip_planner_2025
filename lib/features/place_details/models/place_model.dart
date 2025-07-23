class Place {
  final String title;
  final String imageUrl;
  final List<String> categories;
  final String openingHours;
  final String locationName;
  final double latitude;
  final double longitude;

  Place({
    required this.title,
    required this.imageUrl,
    required this.categories,
    required this.openingHours,
    required this.locationName,
    required this.latitude,
    required this.longitude,
  });
}
