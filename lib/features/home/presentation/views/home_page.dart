import 'package:airbnb/features/home/domain/models/listing.dart';
import 'package:flutter/material.dart';
import 'package:airbnb/features/home/presentation/widgets/search_bar.dart';
import 'package:airbnb/features/home/presentation/widgets/category_list.dart';
import 'package:airbnb/features/home/presentation/widgets/listing_card.dart';
import 'package:airbnb/features/home/data/repositories/listing_repository.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final ListingRepository _listingRepository = ListingRepository();
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _handleSearch() {
    debugPrint('Search tapped');
  }

  void _handleListingTap(String id) {
    debugPrint('Listing tapped: $id');
    // Add navigation or other handling here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomSearchBar(
              onTap: _handleSearch,
            ),
            CategoryList(),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await _listingRepository.getListings();
                },
                child: FutureBuilder<List<Listing>>(
                  future: _listingRepository.getListings(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    
                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    final listings = snapshot.data ?? [];
                    
                    return ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: listings.length,
                      itemBuilder: (context, index) {
                        final listing = listings[index];
                        return ListingCard(
                          title: listing.title,
                          host: listing.host,
                          price: listing.price,
                          isLive: listing.isLive,
                          images: listing.images,
                          onTap: () => _handleListingTap(listing.id),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
