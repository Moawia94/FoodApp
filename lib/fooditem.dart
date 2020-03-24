import 'package:flutter/material.dart';
import 'detailspage.dart';


class BuildFoodItem extends StatelessWidget {

  BuildFoodItem({@required this.imgpath, @required this.foodname ,@required this.price});
   String imgpath;
   String foodname;
   String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0 , right: 10.0 , left: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder:  (context) => DetailsPage(heroTag: imgpath , foodName: foodname , foodPrice: price,)
          ));
        } ,
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: imgpath,
                    child: Image(
                      image: AssetImage(imgpath),
                      fit: BoxFit.cover ,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodname,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {} ,
            ),
          ],
        ),
      ),
    );
  }
  }