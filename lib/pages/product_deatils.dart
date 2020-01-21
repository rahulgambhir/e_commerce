import 'package:flutter/material.dart';
import 'package:ShopApp/main.dart';
import 'package:ShopApp/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
   this.product_detail_name,
   this.product_detail_new_price,
   this.product_detail_old_price,
   this.product_detail_picture
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
            child: Text("ShopApp")),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,),
              onPressed: ()=>print("search")),
          
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
            footer: new Container(
              color:Colors.white,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: new Text("\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                          decoration: TextDecoration.lineThrough),),
                    ),
                    Expanded(
                        child: new Text("\$${widget.product_detail_new_price}",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                        ),),
                    )
                  ],
                ),
                
              ),
            ),
            ),
          ),

          //=============First Button================
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                      onPressed: (){
                        showDialog(
                            context: context,
                        builder: (context){
                           return new AlertDialog(
                             title: new Text("Size"),
                             content:new Text("Choose the size"),
                             actions: <Widget>[
                               new MaterialButton(
                                 onPressed: (){
                                   Navigator.of(context).pop(context);
                                 },
                               child: new Text("close"),)
                             ],
                           );
                        });
                      },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                  ),
              ),
              Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new Text("Size"),
                              content:new Text("Choose the size"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("close"),)
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("Colors"),),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),),),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content:new Text("Choose the size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),),),
            ],
          ),

          Row(
            children: <Widget>[

              Expanded(
                  child: MaterialButton(
                    padding: EdgeInsets.all(10),
                      onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now"),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(Icons.add_shopping_cart,color: Colors.red,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(Icons.favorite_border,color: Colors.red,),
              ),
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name",style: TextStyle(color: Colors.grey),),),
              Padding(
                  padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand",style: TextStyle(color: Colors.grey),),),
              //DONT FORGOT TO ADD BRAND
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand X"),)
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition",style: TextStyle(color: Colors.grey),),),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),)
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),

          //SIMILAR PRODUCTS
          new Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context,int index){
          return Similar_single_product(
            product_list[index]['name'],
            product_list[index]['picture'],
            product_list[index]['old price'],
            product_list[index]['price'],
          );
        });
  }
}
class Similar_single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_product(
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


