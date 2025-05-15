import 'package:flutter/material.dart';
import 'package:travelbuddy/utils/constans.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
 
  
  @override
 State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen>{
   
 @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: EdgeInsets.all(16),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Search
          TextFormField(
              
              decoration: const InputDecoration(
                
                labelText: 'Search',
                hintText: 'Search sity....',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
                icon: Icon(Icons.search)
               
              ),
              onChanged: (value) {
                setState(() {
                });
               },
    ),
    //Filtres for Place
    BoxSized,
    Text('Filtres',style: textStyle ),
    BoxSized,
    //Category
    ElevatedButton(
      onPressed: (){}, 
      child: Text('All Category')),
     SizedBox(height: 15,),
     //Stars
     Text('Stars',style: textStyle),
     SizedBox(height: 12,),
     Row(
      children: [
         ElevatedButton(
          onPressed: (){}, 
          child: Text('5+')),
          SizedBox(width: 10,),
         ElevatedButton(
          onPressed: (){}, 
          child: Text('4+')),
          SizedBox(width: 10,),
        ElevatedButton(
          onPressed: (){}, 
          child: Text('3+')),
          SizedBox(width: 10,),
           ElevatedButton(
          onPressed: (){}, 
          child: Text('2+')),
          SizedBox(width: 10,),
           ElevatedButton(
          onPressed: (){}, 
          child: Text('1+')),
          
      ],),
      BoxSized,
      Text('Resoult', style: textStyle,),
      SizedBox(height: 15,)
      // Card(
      //   Place(category: ,)
      // )

    ],
    ),
    );
  }
}