import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin :  const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      padding: const EdgeInsets.all(10.0),
      height: 100.0,
      child: Column(
       children: <Widget>[
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text('Good morning',style: Theme.of(context).textTheme.headline1,),
             IconButton(icon: Icon(Icons.add_shopping_cart), onPressed: ( ){})
           ],
         ),
          Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             Text('Jerry',style: Theme.of(context).textTheme.headline1,),
             SizedBox(
               width: 10.0,
             ),
             Image.asset('assets/icons/coffeecup.png',color: Colors.black,),
           ],
         ),
       ],
     ),
    );
  }
}
