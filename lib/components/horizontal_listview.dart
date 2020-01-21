import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
           Category(
             image_caption: "Shirt",
             image_location: 'images/category/shirt.png',
           ),
          Category(
            image_caption: 'pant',
            image_location: 'images/category/pant.png',
          ),
          Category(
            image_caption: 'coat',
            image_location: 'images/category/coat.png',
          ),
          Category(
            image_caption: 'shoes',
            image_location: 'images/category/shoes.png',
          ),
          Category(
            image_caption: 'socks',
            image_location: 'images/category/socks.png',
          ),
          Category(
            image_caption: 'tshirt',
            image_location: 'images/category/tshirt.png',
          ),
          Category(
            image_caption: 'inner wear',
            image_location: 'images/category/innerwear.png',
          ),
          Category(
            image_caption: 'pajama',
            image_location: 'images/category/pajama.png',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_caption,
    this.image_location,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: InkWell(
             onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
            height: 100.0,
            width: 80.0,
            ),
            subtitle: Container(
                alignment: Alignment.bottomCenter,
                child: new Text(
                  image_caption,
                  style: TextStyle(color: Colors.black),
                )
            ),
          ),
        ),)
      ,);
  }
}

