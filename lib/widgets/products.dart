
import '../data/data.dart';
import 'package:flutter/material.dart';

class ProductsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: productData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(

            margin: const EdgeInsets.all(10.0),
            width: 90.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              border: Border.all(
                color: Color(0xFF9DA0AC),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                        width: 1.5, color: Theme.of(context).primaryColor),
                  ),
                  child: Image.asset(
                    productData[index].icon,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  productData[index].title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  width: 35.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        width: 1.5, color: Theme.of(context).primaryColor),
                  ),
                  child: Text(
                    productData[index].itemCount,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
