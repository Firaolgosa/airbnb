import 'package:airbnb/features/home/domain/models/listing.dart';
import 'package:flutter/material.dart';
import 'package:airbnb/features/home/presentation/widgets/search_bar.dart';
import 'package:airbnb/features/home/presentation/widgets/category_list.dart';
import 'package:airbnb/features/home/presentation/widgets/listing_card.dart';
import 'package:airbnb/features/home/data/repositories/listing_repository.dart';
import 'package:airbnb/core/constants/app_icons.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ListingRepository _listingRepository = ListingRepository();
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleNavigation(int index) {
    if (index == 4) {
      context.push('/profile');
    } else {
      setState(() {
        _selectedIndex = index;
        _tabController.animateTo(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  const CustomSearchBar(),
                  const SizedBox(height: 12),
                  CategoryList(
                    selectedIndex: _selectedIndex,
                    onCategorySelected: _handleNavigation,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(5, (index) {
                  return FutureBuilder<List<Listing>>(
                    future: _listingRepository.getListings(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 16,
                            right: 16,
                            bottom: 80,
                          ),
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            final listing = snapshot.data![index];
                            return ListingCard(
                              title: listing.title,
                              host: listing.host,
                              price: listing.price,
                              images: listing.images,
                              isLive: listing.isLive,
                            );
                          },
                        );
                      }
                      return const Center(child: CircularProgressIndicator());
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _handleNavigation,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(AppIcons.explore),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.wishlist),
              label: 'Wishlists',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.trips),
              label: 'Trips',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.inbox),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.profile),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
