import 'package:flutter/material.dart';

import 'package:travelbuddy/screen/add_place_screen.dart';
import 'package:travelbuddy/screen/home_screen.dart';
import 'package:travelbuddy/screen/profile_screen.dart';
import 'package:travelbuddy/screen/search_screen.dart';
import 'package:travelbuddy/widgets/custom_search_bar.dart';
import 'package:travelbuddy/widgets/place_card.dart';
//сылки для Widget
final Map<String, WidgetBuilder> appRoutes = {
  '/home': (context) => HomeScreen(controller: ScrollController() ,),
  '/search_custom': (context) => CustomSearchBar(),
  '/place_card': (context) => PlaceCard(),
  '/search':(context) => SearchScreen(),
  '/add_place':(context) => AddPlaceScreen(),
  '/profile':(context) => ProfileScreen(),
};