import '../../domain/models/listing.dart';

class ListingRepository {
  Future<List<Listing>> getListings() async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      Listing(
        id: '1',
        title: 'Haunt the Beetlejuice house',
        host: 'Delia Deetz',
        price: '£0 per guest',
        images: [
          'assets/images/beetlejuice_1.jpg',
          'assets/images/beetlejuice_2.jpg',
          'assets/images/beetlejuice_3.jpg',
          'assets/images/beetlejuice_4.jpg',
          'assets/images/beetlejuice_5.jpg',
        ],
        isLive: true,
        rating: 4.9,
        reviews: 156,
        location: 'Winter River, Connecticut',
        amenities: [
          'Ghost-friendly',
          'Supernatural views',
          'Recently deceased welcome',
          'Unique architecture',
        ],
      ),
      // Add more listings as needed
    ];
  }
} 