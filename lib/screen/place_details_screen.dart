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
       backgroundColor:  const Color.fromARGB(255, 12, 132, 148),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Land:',
                style: TextStyle(
                 
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                  ),),
                Text(land,
                style: TextStyle(
                 
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                )  
              ],
            ),
//Description                
             Container(
              decoration: BoxDecoration(
                border:  Border.all(color: Colors.black,width: 3)
              ),
                width: 300,
                height: 200,
                child:  Text('Cologne Cathedral is a famous Gothic cathedral located in Cologne, Germany. It is one of the largest and most impressive churches in Europe, known for its twin spires that rise about 157 meters high. Construction began in 1248 but wasn’t completed until 1880, over 600 years later. The cathedral is a UNESCO World Heritage Site and a major symbol of German Catholicism and Gothic architecture. Inside, it holds beautiful stained glass windows and the Shrine of the Three Kings, which is believed to contain relics of the Biblical Magi.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                              ),
             )

          ],
        ),
      )
    );
  }
}