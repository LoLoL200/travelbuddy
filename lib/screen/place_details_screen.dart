import 'package:flutter/material.dart';
import 'package:travelbuddy/utils/constans.dart';
///class Place Deteil Screen
class PlaceDetailsScreen extends StatelessWidget {

  
  const PlaceDetailsScreen({
    super.key,
    required this.name,
    required this.image,
    required this.star,
    required this.land,
    required this.category
  });
    final String name;
    final String image;
    final double star;
    final String land;
    final String category;

   
  
  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Scaffold(
      
      appBar:  AppBar(
       backgroundColor:  const Color.fromARGB(255, 119, 157, 212),
        title: Text('Place Information'),
      ),
      body: Center(
        child: Column(
          children: [
//Build
         
        Image.asset(
              image,
              fit: BoxFit.fill,
              width: size.width,
              height:200,
              ),
   
//Name  place          
            Text(name, style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
//Star          
            Row(
              children: [
                Text('Grade:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,),
                Text('$star',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              
              ],
            ),
//Land            
            Row(
              mainAxisAlignment: center,
              children: [
                Text('Land:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                  ),),
                Text(land,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                )  
              ],
            ),
//Description                
             TextFormField(
              
                maxLines: null, 
                minLines: 3,    
                decoration: InputDecoration(
                 
                      hintText: 'Description',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(12.0),
                      
),

),
          ],
        ),
      )
    );
  }
}