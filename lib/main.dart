import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailspage.dart';
import 'fooditem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff03C4C1),
      body: ListView(
        children: <Widget>[
          //***************************************************
          // Start Header Icons
          Padding(
            padding: EdgeInsets.only(top: 15.0 , left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // *************************************************
          // Start Heading Title
          SizedBox(height: 25.0,),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Helthy',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                ),
                SizedBox(width: 10.0),
                Text('Food',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
                ),
              ],
            ),
          ),
          //************************************************
          //Start Foods area
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 175.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0 , right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height -290,
                    child: ListView(
                      children: <Widget>[
                        BuildFoodItem(imgpath :'images/food1.png', foodname:'Fresh Fish', price:'\$40'),
                        BuildFoodItem(imgpath :'images/food2.png', foodname:'Cack', price:'\$40'),
                        BuildFoodItem(imgpath :'images/food3.png', foodname:' Fish', price:'\$40'),
                        BuildFoodItem(imgpath :'images/food4.png', foodname:'Fresh food', price:'\$40'),
                        BuildFoodItem(imgpath :'images/food5.png', foodname:'Fresh Fish', price:'\$40'),
                        BuildFoodItem(imgpath :'images/food6.png', foodname:'Fresh Fish', price:'\$40'),
                        BuildFoodItem(imgpath :'images/food7.png', foodname:'Fresh Fish', price:'\$40'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ) ,
                      child: Center(
                        child: Icon(Icons.search , color: Colors.black,),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ) ,
                      child: Center(
                        child: Icon(Icons.shop , color: Colors.black,),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFF1C1428),
                      ) ,
                      child: Center(
                        child: Text( 'Checkout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

