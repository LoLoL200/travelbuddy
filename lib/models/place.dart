import 'package:flutter/material.dart';
import 'package:travelbuddy/screen/place_details_screen.dart';
import 'package:travelbuddy/utils/constans.dart';


class Place extends StatelessWidget {
   
  //переменые Place
  final String image;
  final String category;
  final double star;
  final String lands;
  final String name;

  const Place({
    super.key,
    required this.category,
    required this.star,
    required this.image,
    required this.lands,
    required this.name
  });
  
//Создание Place
   @override
  Widget build(BuildContext context) {
    return Center(
       child:  Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            TextButton(
            onPressed:()  {
                 Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=> PlaceDetailsScreen(
                      name: name,
                      image: image,
                      star: star,
                       land: lands,
                       category: category
                       )));  

            }, 
            child: Column(
                  children: [
                      Image.asset(image),
                      Center(
                           child: Text(name,
                           style: TextStyle(
                           fontSize: 24,
                           color: Colors.black
              ),),
            ),
           Row(
           children: <Widget> [
//Category
             Column(
              mainAxisAlignment: center,
              children: <Widget>[
                Text('Category:$category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20
                  ),
                  ),
                const SizedBox(width: 8),
//Star
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget> [
                  Text('$star', 
                  style: TextStyle(
                    color: Colors.black
                  )),
                  const SizedBox(height: 10),
                  Icon(Icons.star,color: Colors.amber,),
                  
                  Text(lands,style: TextStyle(),)
                  ],
                ),

                
            ],
            ),
            ],
            ),

            ],
            )
            ),
          ],
        ),
      ),
    );
  }
}

