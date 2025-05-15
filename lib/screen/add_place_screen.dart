import 'package:flutter/material.dart';
import 'package:travelbuddy/utils/constans.dart';



class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});
 @override
  State<AddPlaceScreen> createState() => _AddPlaceScreen();
}

class _AddPlaceScreen extends State<AddPlaceScreen>{
  
  
  
   

  final items = ['Museum','Zoo','Cathedral'];
  String? values;
   DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(item));
  @override
  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      padding: EdgeInsets.all(8),
      child: Center(
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
// Name place
          Text('Name place',style: textStyle),
          SizedBox(height: 8), 
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Name Place',
              border: OutlineInputBorder(),
            ),
          ),
// Category
          SizedBox(height: 16),
          Text('Category',style: textStyle),
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: values,
                isExpanded: true,
                onChanged: (value) => setState(() => values = value),
                items: items.map(buildMenuItem).toList(),
              ),
            ),
          ),
// Description
          SizedBox(height: 16),
          Text('Description',style: textStyle),
          SizedBox(height: 8),
          TextFormField(
            maxLines: null,
            minLines: 3,
            decoration: InputDecoration(
              hintText: 'Description',
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(12.0),
            ),
          ),
// Add photo container
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black),
            ),
            height: 100,
            width: 200,
            child: Center(child: Text('Add photo')),
          ),
// Add button
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.add_box),
          ),
        ],
      ),
      )
    ),
  );
}

 
}