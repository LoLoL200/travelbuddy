import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _Search();
}

class _Search extends State<CustomSearchBar> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              
              decoration: const InputDecoration(
                
                labelText: 'Search',
                hintText: 'Search sity....',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
                icon: Icon(Icons.search)
                //icon: IconButton(onPressed: (){}, icon: Icons.access_alarm)
              ),
              onChanged: (value) {
                setState(() {
                });
               },
    );
   
  }
}
