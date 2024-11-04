import '../../domain/models/listing.dart';

class ListingRepository {
  Future<List<Listing>> getListings() async {
    // Simulating API call delay
    await Future.delayed(const Duration(seconds: 1));

    return [
      Listing(
        id: '1',
        title: 'Wanchi Lake Resort',
        host: 'Ethiopian Tourism',
        price: '\$150/night',
        location: 'Wanchi, Ethiopia',
        amenities: ['WiFi', 'Pool', 'Restaurant', 'Lake View'],
        isLive: true,
        rating: 4.8,
        reviews: 124,
        images: [
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/dd/a5/86/wenchi-crater-lake.jpg',
          'https://www.absoluteethiopia.com/wp-content/uploads/2020/01/Wenchi-Crater-Lake-1.jpg',
          'https://www.absoluteethiopia.com/wp-content/uploads/2020/01/Wenchi-Crater-Lake-2.jpg',
          'https://www.ethiopianairlines.com/images/default-source/holiday-packages/wenchi.jpg',
        ],
      ),
      Listing(
        id: '2',
        title: 'Wanchi Eco Lodge',
        host: 'Local Community',
        price: '\$120/night',
        location: 'Wanchi Crater, Ethiopia',
        amenities: ['Hiking', 'Local Food', 'Nature Tours', 'Mountain View'],
        isLive: true,
        rating: 4.6,
        reviews: 89,
        images: [
          'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/6b/81/dd.jpg',
          'https://www.absoluteethiopia.com/wp-content/uploads/2020/01/Wenchi-Crater-Lake-3.jpg',
          'https://www.ethiopiatjazz.com/wp-content/uploads/2018/09/Wenchi-Crater-Lake.jpg',
          'https://www.absoluteethiopia.com/wp-content/uploads/2020/01/Wenchi-Crater-Lake-4.jpg',
        ],
      ),
    ];
  }
} 