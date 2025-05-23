

import 'package:flutter/material.dart';
import 'package:travelbuddy/models/place.dart';

class PlaceCard extends StatefulWidget {
  
  const PlaceCard({super.key});
  @override
  State<PlaceCard> createState() => _PlaceCard();
  
}

class _PlaceCard extends State<PlaceCard>{
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
          Place(
            name: 'Koln',
            category: 'Cathedral', 
            star: 4.5, 
            image: 'assets/images/defoult.jpg', 
            lands: 'koln'), 
        ],
      );
  }
}