import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ShopApp/components/horizontal_listview.dart';
import 'package:ShopApp/components/products.dart';
import 'package:ShopApp/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Widget image_carousel=new Container(
      height: 200.0,
      padding: EdgeInsets.all(8.00),
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/one.jpg'),
          AssetImage('images/carousel/two.jpg'),
          AssetImage('images/carousel/three.jpg'),
          AssetImage('images/carousel/four.jpg'),
          AssetImage('images/carousel/five.jpg'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotBgColor: Colors.transparent,
        dotSize: 4.0,


      ),
    );
    return Scaffold(
      appBar: new AppBar(
        title: Text("ShopApp"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,),
              onPressed: ()=>print("search")),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Vyom Chandra Gallani"),
              accountEmail: new Text("vyomchandra@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("HomePage"),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
              child: ListTile(
                title: Text("Shoping cart"),
                leading: Icon(Icons.shopping_cart,color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourite"),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            new Divider(
              color: Colors.black,
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help,color:Colors.blue),
              ),
            )

          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Categories"),
          ),
          HorizontalList(),
          Padding(padding: EdgeInsets.all(10.0),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Recent Products"),
          ),
          Container(
            height: 420.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}


