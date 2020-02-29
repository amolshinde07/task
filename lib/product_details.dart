import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product_details extends StatefulWidget {
  @override
  _Product_detailsState createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
                'images/card_img1.jpg'
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'TheBroma',
                    style: TextStyle(
                        fontSize: 30
                    ),
                  ),
                  Text(
                    'Viman Nagar,Pune',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Open Now',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize:15
                        ),
                      ),
                      Text(
                        '12 Noon to 11 PM',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '100k Reviews',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '900 check-ins',
                            style: TextStyle(
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                      Column(
                          children: <Widget>[

                            Text(
                              '4.4',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'out of 5',
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            )
                          ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Cuisine',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      Text(
                        'Indian,Biryani,American',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Type',
                        style: TextStyle(
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        'Cafe,Casual Dining',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),



                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              OutlineButton(

                borderSide:BorderSide(color: Colors.green),
                child: Text(
                  'Order Online',
                  style: TextStyle(
                    color: Colors.green
                  ),
                ),
                onPressed: (){},
              ),
              RaisedButton(
                color: Colors.green,
                child: Text(
                  'Book a Table',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
