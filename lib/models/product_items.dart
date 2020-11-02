
class Products
{
   final String icon;
   final String title;
   final String  itemCount;

   Products({this.icon,this.title,this.itemCount});
}

class Items
{
   final String prodImage;
   final String prodName;
   final String prodRating;
   final List<Persons> ratingPersons;
   final String details;
   final String price;

  Items({this.prodImage, this.prodName, this.prodRating, this.ratingPersons,this.details,this.price});

}

class Persons {
   final String image;
   Persons(this.image);
}