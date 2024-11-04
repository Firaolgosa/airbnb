import '../../domain/models/listing.dart';

class ListingRepository {
  Future<List<Listing>> getListings() async {
    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 800));
    
    return [
      Listing(
        id: '1',
        title: 'Wanchi Create Lake',
        host: 'wach',
        price: '200 birr per guest',
        images: [
          'https://images.unsplash.com/photo-1566073771259-6a8506099945',
          'https://images.unsplash.com/photo-1564013799919-ab600027ffc6',
          'https://images.unsplash.com/photo-1512917774080-9991f1c4c750',
        ],
        isLive: true,
        rating: 4.9,
        reviews: 156,
        location: 'Wanchi, Ethiopia',
        amenities: [
          'Ghost-friendly',
          'Supernatural views',
          'Recently deceased welcome',
          'Unique architecture',
        ],
      ),
      Listing(
        id: '2',
        title: 'Modern Lakefront Villa',
        host: 'Sarah',
        price: '350 birr per night',
        images: [
          'https://images.unsplash.com/photo-1580587771525-78b9dba3b914',
          'https://images.unsplash.com/photo-1576941089067-2de3c901e126',
          'https://images.unsplash.com/photo-1598928506311-c55ded91a20c',
        ],
        isLive: true,
        rating: 4.8,
        reviews: 98,
        location: 'Lake View, Ethiopia',
        amenities: [
          'Lake view',
          'Modern amenities',
          'Private pool',
          'Fully furnished',
        ],
      ),
    ];
  }
} 