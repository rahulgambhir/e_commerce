import 'package:flutter/material.dart';
import 'package:ShopApp/pages/product_deatils.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
    "name":"Sweter",
    "picture":"images/carousel/four.jpg",
    "old price":"120",
    "price":100,
   },
    {
      "name":"t-shirt",
      "picture":"images/carousel/two.jpg",
      "old price":"220",
      "price":150,
    },
    {
      "name":"coat",
      "picture":"images/carousel/three.jpg",
      "old price":"220",
      "price":150,
    },
    {
      "name":"pant",
      "picture":"images/carousel/five.jpg",
      "old price":"220",
      "price":150,
    },
    {
      "name":"Sweter",
      "picture":"images/carousel/four.jpg",
      "old price":"120",
      "price":100,
    },
    {
      "name":"t-shirt",
      "picture":"images/carousel/two.jpg",
      "old price":"220",
      "price":150,
    },
    {
      "name":"coat",
      "picture":"images/carousel/three.jpg",
      "old price":"220",
      "price":150,
    },
    {
      "name":"pant",
      "picture":"images/carousel/five.jpg",
      "old price":"220",
      "price":150,
    },



  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Single_product(
            product_list[index]['name'],
            product_list[index]['picture'],
            product_list[index]['old price'],
            product_list[index]['price'],
          );
        });
  }
}
class Single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_product(
      this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price,
      );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context)=>new ProductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    )));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(prod_name,
                            style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16.0),)
                      ),
                      new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                    ],
                  )
                  ),

                  child: Image.asset(prod_picture,
                  fit: BoxFit.cover,))
            ),
            ),
          ),
    );
  }
}

