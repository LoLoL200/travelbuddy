import 'package:flutter/material.dart';
import 'package:travelbuddy/models/place.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _Search();
}

class _Search extends State<CustomSearchBar> {
   final List<Place> searchPlace = [
   Place(
            name: 'Koln',
            category: 'Cathedral', 
            star: 4.5, 
            image: 'assets/images/defoult.jpg', 
            lands: 'koln'), 
        ];
      
  final List<Place> _results = [];
//Function by search name place  
   void _search(String input){
    final List<Place> matches = [];
    _results.clear();
    for(var place in searchPlace){
      if(place.name.toLowerCase().contains(input.toLowerCase())){
        setState(() {
            _results.clear();
        _results.addAll(matches);
        });
      }
    }
   }
//Search Places
  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (
        BuildContext context, SearchController controller){
          return SearchBar(
            controller: controller,
            padding: const WidgetStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 16.0)
              
              ),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: const Icon(Icons.search),
              
          );
        },
//Search Places by Name
          suggestionsBuilder: (BuildContext context, SearchController controller) {
    return List.generate(5, (dynamic index) {
      return Place(
         name: 'Koln',
            category: 'Cathedral', 
            star: 4.5, 
            image: 'assets/images/defoult.jpg', 
            lands: 'koln'
      );
    });
  },
          );
    // return TextFormField(
    //           decoration: const InputDecoration(
    //             labelText: 'Search',
    //             hintText: 'Search sity....',
    //             border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
    //             icon: Icon(Icons.search)
    //           ),
    //           onChanged: (value) {

               
    //             _search(value);
                  
                
                  
    //            },
    // );
  }
}
