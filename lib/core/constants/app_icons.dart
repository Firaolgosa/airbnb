import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons {
  // Navigation Icons
  static const IconData explore = Icons.search;
  static const IconData wishlist = Icons.favorite_border;
  static const IconData trips = Icons.luggage_outlined;
  static const IconData inbox = Icons.chat_bubble_outline;
  static const IconData profile = Icons.person_outline;

  // Category Icons
  static const IconData iconicStays = FontAwesomeIcons.star;
  static const IconData rooms = FontAwesomeIcons.bed;
  static const IconData castles = FontAwesomeIcons.fortAwesome;
  static  IconData amazingPools = FontAwesomeIcons.swimmingPool;
  static  IconData islands = FontAwesomeIcons.landmark;
  static  IconData beach = FontAwesomeIcons.umbrellaBeach;
  static const IconData skiing = FontAwesomeIcons.skiing;
  static const IconData lakefront = FontAwesomeIcons.water;
  static const IconData surfing = FontAwesomeIcons.water;
  static const IconData aFrames = FontAwesomeIcons.home;

  // Amenity Icons
  static const IconData wifi = FontAwesomeIcons.wifi;
  static const IconData kitchen = FontAwesomeIcons.kitchenSet;
  static const IconData workspace = FontAwesomeIcons.laptop;
  static const IconData parking = FontAwesomeIcons.squareParking;
  static  IconData pool = FontAwesomeIcons.swimmingPool;
  static  IconData hottub = FontAwesomeIcons.hotTub;
  static const IconData gym = FontAwesomeIcons.dumbbell;
  static const IconData bbq = FontAwesomeIcons.fire;

  // Action Icons
  static const IconData share = Icons.share;
  static const IconData heart = Icons.favorite_border;
  static const IconData heartFilled = Icons.favorite;
  static const IconData close = Icons.close;
  static const IconData add = Icons.add;
  static const IconData remove = Icons.remove;
  static const IconData edit = Icons.edit;
  static const IconData location = Icons.location_on_outlined;
  static const IconData calendar = Icons.calendar_today;
  static const IconData filter = Icons.tune;

  // Social Icons
  static const IconData facebook = FontAwesomeIcons.facebook;
  static const IconData google = FontAwesomeIcons.google;
  static const IconData apple = FontAwesomeIcons.apple;
  static const IconData twitter = FontAwesomeIcons.twitter;

  // Brand Icon
  static const IconData airbnbLogo = FontAwesomeIcons.airbnb;

  // Helper method to get category icon
  static IconData getCategoryIcon(String category) {
    switch (category.toLowerCase()) {
      case 'iconic stays':
        return iconicStays;
      case 'rooms':
        return rooms;
      case 'castles':
        return castles;
      case 'amazing pools':
        return amazingPools;
      case 'islands':
        return islands;
      case 'beach':
        return beach;
      case 'skiing':
        return skiing;
      case 'lakefront':
        return lakefront;
      case 'surfing':
        return surfing;
      case 'a-frames':
        return aFrames;
      default:
        return iconicStays;
    }
  }

  // Helper method to get amenity icon
  static IconData getAmenityIcon(String amenity) {
    switch (amenity.toLowerCase()) {
      case 'wifi':
        return wifi;
      case 'kitchen':
        return kitchen;
      case 'workspace':
        return workspace;
      case 'parking':
        return parking;
      case 'pool':
        return pool;
      case 'hot tub':
        return hottub;
      case 'gym':
        return gym;
      case 'bbq':
        return bbq;
      default:
        return Icons.check_circle_outline;
    }
  }
}
