import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Function onPressed;
  Buttons(this.title, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  title == 'Add to cart' ? 40:  45.0,
      width: 150,
      child: title == 'Add to cart' ?
      OutlineButton(
        borderSide: BorderSide(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          title,
          style:
          Theme.of(context).textTheme.headline6.copyWith(letterSpacing: 1,),
        ),
      )
          : RaisedButton(
        onPressed: onPressed,
        elevation: 2.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1.copyWith(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.normal),
        ),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
