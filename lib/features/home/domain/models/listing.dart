class Listing {
  final String id;
  final String title;
  final String host;
  final String price;
  final List<String> images;
  final bool isLive;
  final double rating;
  final int reviews;
  final String location;
  final List<String> amenities;

  Listing({
    required this.id,
    required this.title,
    required this.host,
    required this.price,
    required this.images,
    this.isLive = false,
    this.rating = 0.0,
    this.reviews = 0,
    required this.location,
    required this.amenities,
  });
} 