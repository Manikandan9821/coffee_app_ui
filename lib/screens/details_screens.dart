import 'package:coffee_app/data/data.dart';
import 'package:coffee_app/widgets/button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String image;
  final String details;
  final String ratings;
  final String price;

  DetailScreen({this.name, this.image, this.details, this.ratings, this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 330.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 300.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(35.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 3.0,
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      //child: Image.asset(image,fit: BoxFit.cover,height: 300.0,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(Icons.arrow_back),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          IconButton(
                              icon: Icon(Icons.share),
                              color: Colors.white,
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 25,
                      bottom: 10,
                      child: Container(
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
                            iconSize: 30.0,
                            onPressed: () {}),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Rs.$price',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 20.0,
                            ),
                            Text(
                              '20 min',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Details',
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 20.0),
                    ),
                    Text('Ingredients',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontSize: 20.0)),
                    Text('Reviews',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontSize: 20.0)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Text(details,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 17.0,
                          letterSpacing: 1,
                        )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        for (var i in ratingPersons)
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 18.0,
                              backgroundImage: AssetImage(
                                i.toString(),
                              ),
                            ),
                          ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          child: IconButton(
                              icon: Icon(Icons.add),
                              color: Theme.of(context).primaryColor,
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          ratings,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Buttons('Add to cart', () {}),
                    Buttons('Order now', () {}),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
