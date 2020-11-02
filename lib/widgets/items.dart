import 'package:coffee_app/screens/details_screens.dart';

import '../data/data.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 200.0,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 2.0,
                      blurRadius: 2.0)
                ]),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context)..push(MaterialPageRoute(
                  builder: (context)=>DetailScreen(
                    name: itemData[index].prodName,
                    image: itemData[index].prodImage,
                    details: itemData[index].details,
                    price: itemData[index].price,
                    ratings: itemData[index].prodRating,
                  ),
                ));
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300.0,
                     child: Stack(
                       children: [
                         ClipRRect(
                           borderRadius: BorderRadius.circular(25.0),
                           child: Hero(
                             tag: Text(itemData[index].prodName),
                             child: Image.asset(
                               itemData[index].prodImage,
                               width: double.infinity,
                               height: 250.0,
                               fit: BoxFit.fill,
                             ),
                           ),
                         ),
                         Positioned(
                           right: 10,
                           top: 230,
                           child: Container(
                             height: 40.0,
                             width: 40.0,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(30.0),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.grey[300],
                                   blurRadius: 2.0,
                                   spreadRadius: 1.0,
                                 ),
                               ],
                             ),
                             child: IconButton(
                                 icon: Icon(Icons.favorite),
                                 color: Colors.red,
                                 onPressed: () {}),
                           ),
                         ),
                         Positioned(
                             bottom: 0.0,
                             left: 10.0,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text(
                                 itemData[index].prodName,
                                 overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                     fontSize: 20.0,
                                     letterSpacing: 1.0,
                                     fontWeight: FontWeight.bold),
                               ),
                             )),
                       ],
                     ),
                   ),
                  Expanded(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: [
                                for (var i in ratingPersons)
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    child: CircleAvatar(
                                      radius: 18.0,
                                      backgroundImage: AssetImage(i.toString(),),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(itemData[index].prodRating,style: Theme.of(context).textTheme.headline6,),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(Icons.star,color: Colors.yellow,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
