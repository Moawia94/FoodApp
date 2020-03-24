
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  DetailsPage({this.heroTag, this.foodName , this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  var _selectedCard = 'WEIGHT';



  int numofprice = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF81A3FB),
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('Details',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon:
          Icon(Icons.more_horiz),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height -72.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75.0 ,
                child: Container(
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                    ),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height - 100.0 ,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              //**************************************************
              // Food Image
              Positioned(
                top: 0.0,
                left: (MediaQuery.of(context).size.width /2) - 100.0,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height:200.0 ,
                    width: 200.0,
                  ) ,
                ),
              ),
              //***********************************************
              // Food Details
              Positioned(
                top: 250.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodName,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.foodPrice.toString(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 25.0, color: Colors.grey, width: 1.0,
                        ),
                        Container(
                          width: 125.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17.0),
                            color: Color(0xFF7A9BEE)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    numofprice -- ;
                                  });
                                },
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                      color: Color(0xFF7A9BEE)
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                numofprice.toString(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    numofprice ++;
                                  });
                                },
                                child: Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Colors.white
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF7A9BEE),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 150.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                            _buildInfoCard('WEIGHT', "300", "G"),
                          SizedBox(width: 10.0),
                          _buildInfoCard('Calories', "254", "CAL"),
                          SizedBox(width: 10.0),
                          _buildInfoCard('test1', "254", "CAL"),
                          SizedBox(width: 10.0),
                          _buildInfoCard('test2', "254", "CAL"),
                          SizedBox(width: 10.0),
                          _buildInfoCard('test3', "254", "CAL"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0)
                          ),
                          color: Colors.black
                        ),
                        height: 50.0,
                        child: Center(
                          child: Text( widget.foodPrice,
                          style: TextStyle(color: Colors.white , fontSize: 20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(String cardTitle , String info ,String unit){
    return InkWell(
      onTap: (){
        selectCard(cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: (
        BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardTitle == _selectedCard ? Color(0xFF7A9BEE) : Colors.white,
          border: Border.all(
            color: cardTitle == _selectedCard ? Colors.transparent : Colors.grey.withOpacity(0.3),
            style: BorderStyle.solid,
            width: 0.75,
          ),

        )),
        height: 100.0,
        width: 100.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(cardTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: cardTitle == _selectedCard ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 30.0,),
              Text(info,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: cardTitle == _selectedCard ? Colors.white : Colors.black,
                ),
              ),
              Text(unit,
                style: TextStyle(
                  fontSize: 14.0,
                  color: cardTitle == _selectedCard ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
        ),

      );

  }
    selectCard(cardTitle){
    setState(() {
      _selectedCard = cardTitle;
    });
    }
}


