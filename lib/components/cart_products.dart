import 'package:flutter/material.dart';
class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_on_the_cart=[
    {
      "name":"Sweter",
      "picture":"images/carousel/four.jpg",
      "old price":"120",
      "price":100,
       "size":"M",
       "color":"Red",
       "Quantity":1,
    },
    {
      "name":"t-shirt",
      "picture":"images/carousel/two.jpg",
      "old price":"220",
      "price":150,
      "size":"XL",
      "color":"Green",
      "Quantity":1,
    },
    {
      "name":"coat",
      "picture":"images/carousel/three.jpg",
      "old price":"220",
      "price":150,
      "size":"L",
      "color":"Blue",
      "Quantity":1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
            return Single_Cart_Product(
              cart_prod_name: products_on_the_cart[index]["name"],
              cart_prod_picture: products_on_the_cart[index]["picture"],
              cart_prod_price:products_on_the_cart[index]["price"] ,
              cart_prod_size:products_on_the_cart[index]["size"] ,
              cart_prod_color: products_on_the_cart[index]["color"],
              cart_prod_qty: products_on_the_cart[index]["Quantity"],
            );
        });
  }
}
class Single_Cart_Product extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_Cart_Product({
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
       leading: new Image.asset(cart_prod_picture,height: 60.0,width: 60.0,),
      trailing: FittedBox(
          fit: BoxFit.fill,
        child: Column(
          children: <Widget>[
             new IconButton(icon: Icon(Icons.arrow_drop_up,), onPressed: (){},),
              new Text("1"),
              new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: (){}),
          ],
        ),
      ),
        title: new Text(cart_prod_name,style: TextStyle(fontSize: 17.0),),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: new Text(cart_prod_size,style: TextStyle(color:Colors.red),),
                ),
                new Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 3.0, 3.0, 3.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 17.0),),
            )
          ],
        ),

      ),
    );
  }
}

